
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru
    :version |0.0.1
  :files $ {}
    |app.comp.container $ {}
      :ns $ quote
        ns app.comp.container $ :require (respo-ui.core :as ui)
          respo-ui.core :refer $ hsl
          respo.core :refer $ defcomp defeffect <> >> div button textarea span input list-> create-element
          respo.comp.space :refer $ =<
          reel.comp.reel :refer $ comp-reel
          respo-md.comp.md :refer $ comp-md
          app.config :refer $ dev? use-xunfei?
          memof.alias :refer $ memof-call
          "\"jdenticon" :as jdenticon
          "\"../xunfei/sdk" :refer $ speakXunfei
      :defs $ {}
        |read-content $ quote
          defn read-content (messages d!)
            when
              not $ empty? messages
              let
                  msg $ first messages
                  text $ :text msg
                d! :message msg
                ; println "\"read" text
                scroll-view!
                if use-xunfei?
                  speakXunfei text $ fn ()
                    read-content (rest messages) d!
                  speech! text $ fn ()
                    read-content (rest messages) d!
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                cursor $ either (:cursor states) ([])
                state $ either (:data states)
                  {} $ :content "\""
              div
                {} $ :style
                  merge ui/global ui/fullscreen ui/row $ {} (:background-color :white)
                div
                  {} $ :style
                    {} (:width "\"34%")
                      :border $ str "\"1px solid " (hsl 0 0 80)
                  memof-call comp-menu
                div
                  {} $ :style (merge ui/expand ui/column)
                  memof-call comp-header
                  comp-messages $ :messages store
                  memof-call comp-input $ >> states :input
                  when dev? $ comp-reel (>> states :reel) reel ({})
        |comp-menu $ quote
          defcomp comp-menu () $ div
            {} $ :style
              {} $ :padding 16
            list-> ({})
              -> reading-list $ map
                fn (info)
                  [] (:id info)
                    div
                      {} $ :on-click
                        fn (e d!) (js/window.speechSynthesis.cancel)
                          read-content (:messages info) d!
                      <> $ :title info
        |speech! $ quote
          defn speech! (text cb)
            let
                t $ new js/window.SpeechSynthesisUtterance text
              set! (.-lang t) "\"zh-cn"
              set! (.-rate t) 1.1
              let
                  vs $ .!filter (js/window.speechSynthesis.getVoices)
                    fn (v i a)
                      .!includes (.-lang v) "\"zh"
                ; js/console.log "\"Voices" vs
                set! (.-voice t)
                  wo-js-log $ aget vs 3
              js/window.speechSynthesis.speak t
              set! (.-onend t)
                fn (event) (js/setTimeout cb 400)
        |slurp $ quote
          defmacro slurp (path) (; println "\"reading path" path) (read-file path)
        |comp-input $ quote
          defcomp comp-input (states)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} $ :content "\""
              div
                {} $ :style
                  merge ui/row-middle $ {} (:padding "\"6px 4px")
                    :background-color $ hsl 0 0 97
                    :border-top $ str "\"1px solid " (hsl 0 0 90)
                textarea $ {}
                  :value $ :content state
                  :placeholder "\"Content"
                  :style $ merge ui/textarea ui/expand
                    {} (:height 40) (:line-height "\"24px") (:border :none)
                  :on-input $ fn (e d!)
                    d! cursor $ assoc state :content (:value e)
                  :autofocus true
                  :on-keydown $ fn (e d!)
                    let
                        event $ :event e
                      when
                        = "\"Enter" $ .-key event
                        .!preventDefault $ :event e
                        d! :message $ .-value
                          .-target $ :event e
                        d! cursor $ assoc state :content "\""
                        scroll-view!
                =< 6 nil
                div $ {}
                  :style $ {}
                    :border $ str "\"2px solid " (hsl 200 80 60)
                    :width 28
                    :height 28
                    :border-radius "\"50%"
        |comp-messages $ quote
          defcomp comp-messages (ms)
            div
              {} $ :style ui/expand
              list->
                {} $ :id "\"message-area"
                -> ms
                  or $ []
                  .map-indexed $ fn (idx m)
                    [] idx $ comp-message m
              =< nil 80
        |comp-avatar $ quote
          defcomp comp-avatar (label)
            [] (effect-render-icon label)
              div $ {}
                :style $ {} (:width 40) (:height 40)
                  :background-color $ hsl 0 0 90
                  :border-radius "\"4px"
        |scroll-view! $ quote
          defn scroll-view! () $ js/setTimeout
            fn () $ let
                target $ js/document.querySelector "\"#message-area"
                last-child $ if (some? target) (.-lastElementChild target)
              if (some? last-child) (.!scrollIntoViewIfNeeded last-child) (js/console.warn "\"no target")
            , 100
        |comp-header $ quote
          defcomp comp-header () $ div
            {}
              :style $ merge ui/row-parted
                {} (:padding "\"4px 6px") (:font-weight :bold) (:font-size 16)
                  :background-color $ hsl 0 0 97
                  :border-bottom $ str "\"1px solid " (hsl 0 0 90)
              :on-click $ fn (e d!) (js/document.body.requestFullscreen)
            <> "\"<"
            <> "\"Hestory"
            <> "\"..."
        |reading-list $ quote
          def reading-list $ []
            parse-cirru-edn $ slurp "\"data/000-demo.cirru"
        |comp-message $ quote
          defcomp comp-message (content)
            div
              {} $ :style
                merge ui/row $ {} (:width "\"90%") (:padding "\"4px 6px")
              comp-avatar $ :author content
              =< 8 nil
              div
                {} $ :style ui/expand
                div
                  {} $ :style
                    {}
                      :color $ hsl 0 0 70
                      :font-size 12
                      :line-height "\"18px"
                  <> $ :author content
                  div
                    {} $ :style
                      {}
                        :color $ hsl 0 0 40
                        :font-size 16
                        :line-height "\"24px"
                    <> $ :text content
        |effect-render-icon $ quote
          defeffect effect-render-icon (label) (action el at?)
            let
                svg-ns "\"http://www.w3.org/2000/svg"
                svg $ js/document.createElementNS svg-ns "\"svg"
              .!appendChild el svg
              jdenticon/update svg label
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
            :messages $ []
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          respo.cursor :refer $ update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case-default op
              do (println "\"unknown op:" op) store
              :states $ update-states store data
              :hydrate-storage data
              :message $ update store :messages
                fn (xs) (conj xs data)
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          respo.core :refer $ render! clear-cache!
          app.comp.container :refer $ comp-container
          app.updater :refer $ updater
          app.schema :as schema
          reel.util :refer $ listen-devtools!
          reel.core :refer $ reel-updater refresh-reel
          reel.schema :as reel-schema
          app.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |persist-storage! $ quote
          defn persist-storage! () $ .!setItem js/localStorage (:storage-key config/site)
            format-cirru-edn $ :store @*reel
        |mount-target $ quote
          def mount-target $ .!querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            js/window.speechSynthesis.getVoices
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            ; .!addEventListener js/window |beforeunload $ fn (event) (persist-storage!)
            ; repeat! 60 persist-storage!
            ; let
                raw $ .!getItem js/localStorage (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:storage-key "\"hestory")
        |use-xunfei? $ quote
          def use-xunfei? $ = "\"true" (get-env "\"xunfei")
