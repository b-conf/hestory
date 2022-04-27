
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/compact.cirru |lilac/compact.cirru |memof/compact.cirru |respo-ui.calcit/compact.cirru |respo-markdown.calcit/compact.cirru |reel.calcit/compact.cirru |respo-feather.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ {}
      :defs $ {}
        |at-pattern $ quote
          def at-pattern $ new js/RegExp "\"@"
        |comp-avatar $ quote
          defcomp comp-avatar (label)
            [] (effect-render-icon label)
              div $ {}
                :style $ {} (:width 40) (:height 40)
                  :border $ str "\"1px solid " (hsl 0 0 90)
                  :border-radius "\"2px"
        |comp-container $ quote
          defcomp comp-container (reel)
            let
                store $ :store reel
                states $ :states store
                cursor $ either (:cursor states) ([])
                state $ either (:data states)
                  {} (:content "\"") (:voice? false)
              div
                {} $ :style
                  merge ui/global ui/fullscreen ui/row $ {} (:background-color :white) (:font-size 16)
                div
                  {} $ :style
                    merge ui/column $ {} (:width "\"28%")
                      :background-color $ hsl 0 0 94
                  memof-call comp-menu $ :voice? state
                  div
                    {} $ :style
                      merge ui/row-parted $ {} (:padding "\"0 8px") (:user-select :none)
                    a $ {} (:href "\"https://github.com/b-conf/hestory") (:target "\"_blank") (:inner-text "\"源码查看 GitHub.")
                      :style $ {} (:font-size 14)
                    span $ {} (:inner-text "\"Voice")
                      :style $ {} (:cursor :pointer) (:font-family ui/font-fancy)
                        :color $ if (:voice? state) (hsl 240 60 60) (hsl 0 0 80)
                      :on-click $ fn (e d!)
                        d! cursor $ update state :voice? not
                div
                  {} $ :style (merge ui/expand ui/column)
                  memof-call comp-header
                  comp-messages $ :messages store
                  memof-call comp-input $ >> states :input
                  when dev? $ comp-reel (>> states :reel) reel ({})
        |comp-header $ quote
          defcomp comp-header () $ div
            {} $ :style
              merge ui/row-parted $ {} (:padding "\"4px 6px") (:font-weight 300) (:font-size 16)
                :background-color $ hsl 0 0 97
                :border-bottom $ str "\"1px solid " (hsl 0 0 90)
            span nil
            span
              {} $ :on-click
                fn (e d!) (js/document.body.requestFullscreen)
              <> "\"Hestory" $ {} (:font-family ui/font-fancy)
            comp-icon :trash
              {} (:font-size 20)
                :color $ hsl 320 80 70
                :line-height "\"20px"
                :vertical-align :middle
                :cursor :pointer
              fn (e d!) (d! :clear nil)
                let
                    xs $ js/document.querySelectorAll "\"audio"
                  .!forEach xs $ fn (x i ? n) (.!remove x)
                js/window.speechSynthesis.cancel
        |comp-input $ quote
          defcomp comp-input (states)
            let
                cursor $ :cursor states
                state $ either (:data states)
                  {} $ :content "\""
              div
                {} $ :style
                  merge ui/row-middle $ {} (:padding "\"6px 10px")
                    :background-color $ hsl 0 0 97
                    :border-top $ str "\"1px solid " (hsl 0 0 90)
                textarea $ {}
                  :value $ :content state
                  :placeholder "\"Reply..."
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
                        d! :message $ {} (:author "\"Me")
                          :text $ .-value
                            .-target $ :event e
                        d! cursor $ assoc state :content "\""
                        scroll-view!
        |comp-menu $ quote
          defcomp comp-menu (voice?)
            div
              {} $ :style
                merge ui/expand $ {} (:padding "\"16px 0") (:line-height "\"36px")
              list-> ({})
                -> reading-list $ map
                  fn (info)
                    [] (:idx info)
                      div
                        {} (:class-name "\"hover-item")
                          :style $ merge ui/row-middle
                            {} (:cursor :pointer) (:padding "\"0 8px")
                          :on-click $ fn (e d!) (js/window.speechSynthesis.cancel)
                            if voice?
                              read-content (:messages info) 0 d!
                              swap-messages (:messages info) d!
                        comp-icon :link
                          {} (:font-size 14)
                            :color $ hsl 230 70 70
                            :line-height "\"14px"
                          , nil
                        =< 2 nil
                        <> (:idx info)
                          {}
                            :color $ hsl 0 0 70
                            :font-size 12
                            :font-family ui/font-code
                        =< 8 nil
                        <> $ :title info
                        =< 8 nil
                        <>
                          str $ count (:messages info)
                          {} (:font-size 12)
                            :background-color $ hsl 200 60 85
                            :color :white
                            :padding "\"0px 5px"
                            :border-radius "\"8px"
                            :line-height "\"16px"
              =< nil 80
        |comp-message $ quote
          defcomp comp-message (content)
            div
              {} $ :style
                merge ui/row $ {} (:width "\"98%") (:padding "\"4px 10px")
              comp-avatar $ :author content
              =< 8 nil
              div
                {} $ :style ui/flex
                div
                  {} $ :style
                    {}
                      :color $ hsl 0 0 70
                      :font-size 12
                      :line-height "\"18px"
                  div
                    {} $ :style ui/row-parted
                    <> $ :author content
                    <>
                      str "\"#" $ or (:floor content) "\"_"
                      {} (:font-size 10)
                        :color $ hsl 0 0 80
                        :font-family ui/font-code
                  div
                    {} $ :style
                      {}
                        :color $ hsl 0 0 40
                        :font-size 16
                        :line-height "\"24px"
                    if (:code? content)
                      pre
                        {} $ :style
                          {} (:font-size 14) (:margin 0) (:border-radius "\"4px")
                            :border $ str "\"1px solid " (hsl 0 0 90)
                            :padding "\"6px 8px"
                        code $ {}
                          :innerText $ trim (:text content)
                      comp-md $ :text content
        |comp-messages $ quote
          defcomp comp-messages (ms)
            div
              {} $ :style ui/expand
              =< nil 8
              list->
                {} $ :id "\"message-area"
                -> ms
                  or $ []
                  .map-indexed $ fn (idx m)
                    [] idx $ comp-message m
              if (empty? ms)
                div
                  {} $ :style
                    merge ui/center $ {} (:padding "\"40px")
                  <> "\"Cleared." $ {} (:font-family ui/font-fancy) (:font-weight 500)
                    :color $ hsl 0 0 70
                    :font-style :italic
              =< nil 80
        |effect-render-icon $ quote
          defeffect effect-render-icon (label) (action el at?)
            case-default action nil
              :mount $ let
                  svg-ns "\"http://www.w3.org/2000/svg"
                  svg $ js/document.createElementNS svg-ns "\"svg"
                .!appendChild el svg
                jdenticon/update svg label
              :update $ let
                  svg $ .!querySelector el "\"svg"
                jdenticon/update svg label
        |keywordize-edn $ quote
          defn keywordize-edn (data)
            cond
                list? data
                map data keywordize-edn
              (map? data)
                map-kv data $ fn (k v)
                  [] (turn-keyword k) (keywordize-edn v)
              true data
        |read-content $ quote
          defn read-content (messages idx d!)
            when
              not $ empty? messages
              let
                  msg $ first messages
                  text $ if (:code? msg) "\"Code" (:text msg)
                d! :message $ assoc msg :floor idx
                ; println "\"read" text
                case-default api-target
                  speech! (santinize-voice text)
                    fn () $ read-content (rest messages) (inc idx) d!
                  "\"xunfei" $ speakXunfei (santinize-voice text)
                    fn () $ read-content (rest messages) (inc idx) d!
                  "\"azure" $ synthesizeAzureSpeech (santinize-voice text) (get-env "\"azure-key")
                    fn $
                    fn () $ read-content (rest messages) (inc idx) d!
                  "\"audio" $ requestAudioSpeech (get-env "\"audio-host") (santinize-voice text)
                    fn () $ read-content (rest messages) (inc idx) d!
                scroll-view!
        |reading-list $ quote
          def reading-list $ []
            parse-cirru-edn $ slurp "\"data/2019-08-15-serverless.cirru"
            parse-cirru-edn $ slurp "\"data/2019-07-22-http2-perf.cirru"
            parse-cirru-edn $ slurp "\"data/2019-07-10-deps-lock.cirru"
            parse-cirru-edn $ slurp "\"data/2019-07-02-yield-syntax.cirru"
            parse-cirru-edn $ slurp "\"data/2019-06-06-top-level-await.cirru"
            parse-cirru-edn $ slurp "\"data/2019-03-21-decorator-change.cirru"
            parse-cirru-edn $ slurp "\"data/2018-12-07-chrome-ie.cirru"
            parse-cirru-edn $ slurp "\"data/2018-11-19-private-field-problem.cirru"
            keywordize-edn $ to-calcit-data
              toml/parse $ slurp "\"data/2020-08-12-template-stringify.toml"
            parse-cirru-edn $ slurp "\"data/2018-11-14-js-build-speed.cirru"
            parse-cirru-edn $ slurp "\"data/2018-11-06-web-comps-templates.cirru"
            parse-cirru-edn $ slurp "\"data/2018-11-06-svelte-proposal.cirru"
            parse-cirru-edn $ slurp "\"data/2018-11-01-react-hooks-internals.cirru"
            parse-cirru-edn $ slurp "\"data/2018-10-26-react-hooks-wonder.cirru"
            parse-cirru-edn $ slurp "\"data/2018-10-21-react-class-syntax.cirru"
            parse-cirru-edn $ slurp "\"data/2018-09-27-vue-ts.cirru"
            parse-cirru-edn $ slurp "\"data/2018-08-23-worker-dom.cirru"
            parse-cirru-edn $ slurp "\"data/2018-07-21-algebraic-interrupts-early.cirru"
            parse-cirru-edn $ slurp "\"data/2018-08-10-write-book.cirru"
            parse-cirru-edn $ slurp "\"data/2018-08-18-babel-compile.cirru"
            parse-cirru-edn $ slurp "\"data/2018-07-13-vue-internals.cirru"
            parse-cirru-edn $ slurp "\"data/2018-07-04-babel-parser.cirru"
            parse-cirru-edn $ slurp "\"data/2018-06-15-vue-stars.cirru"
            parse-cirru-edn $ slurp "\"data/2018-05-11-layered-apis.cirru"
            parse-cirru-edn $ slurp "\"data/2018-07-23-demo.cirru"
        |santinize-voice $ quote
          defn santinize-voice (text)
            -> text (.!replace at-pattern "\" at ")
              .!replace url-pattern $ fn (target & args)
                let
                    url $ new js/URL target
                  if (some? url)
                    str "\" link to "
                      .!replace (.-host url) "\"www." "\""
                      , "\" "
                    , "\"link. "
        |scroll-view! $ quote
          defn scroll-view! () $ js/setTimeout
            fn () $ let
                target $ js/document.querySelector "\"#message-area"
                last-child $ if (some? target) (.-lastElementChild target)
              if (some? last-child)
                if
                  some? $ .-scrollIntoViewIfNeeded last-child
                  .!scrollIntoViewIfNeeded last-child
                  .!scrollIntoView last-child
                js/console.warn "\"no target"
            , 100
        |slurp $ quote
          defmacro slurp (path) (; println "\"reading path" path) (read-file path)
        |speech! $ quote
          defn speech! (text cb)
            let
                t $ new js/window.SpeechSynthesisUtterance text
              set! (.-lang t) "\"zh-cn"
              set! (.-rate t) 1.2
              let
                  v0 $ js/window.speechSynthesis.getVoices
                  vs $ .!filter v0
                    fn (v i a)
                      .!includes (.-lang v) "\"zh"
                if
                  some? $ aget vs 3
                  set! (.-voice t) (aget vs 3)
                  js/console.warn "\"no voice:" v0
              js/window.speechSynthesis.speak t
              set! (.-onend t)
                fn (event) (js/setTimeout cb 400)
              ; set! (.-onerror t)
                fn (event) (js/console.log "\"speech error:" event) (js/setTimeout cb 400)
              ; set! (.-onboundary t)
                fn (event) (js/console.log "\"speech boundary:" event) (js/setTimeout cb 1000)
              ; set! (.-onpause t)
                fn (event) (js/console.log "\"speech pause:" event) (js/setTimeout cb 1000)
        |swap-messages $ quote
          defn swap-messages (messages d!) (d! :swap-messages messages)
        |url-pattern $ quote
          def url-pattern $ new js/RegExp "\"https?:[\\w\\d\\/_#\\.\\=\\?\\-\\%]+"
      :ns $ quote
        ns app.comp.container $ :require (respo-ui.core :as ui)
          respo-ui.core :refer $ hsl
          respo.core :refer $ defcomp defeffect <> >> a div button textarea span input list-> create-element pre code
          respo.comp.space :refer $ =<
          reel.comp.reel :refer $ comp-reel
          respo-md.comp.md :refer $ comp-md
          app.config :refer $ dev? api-target
          memof.alias :refer $ memof-call
          "\"jdenticon" :as jdenticon
          "\"../xunfei/sdk" :refer $ speakXunfei
          "\"../assets/play-azure" :refer $ synthesizeAzureSpeech
          "\"../assets/play-audio" :refer $ requestAudioSpeech
          feather.core :refer $ comp-icon comp-i
          "\"toml" :as toml
    |app.config $ {}
      :defs $ {}
        |api-target $ quote
          def api-target $ get-env "\"api-target"
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:storage-key "\"hestory")
      :ns $ quote (ns app.config)
    |app.main $ {}
      :defs $ {}
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |main! $ quote
          defn main! ()
            if (= config/dev? "\"dev") (load-console-formatter!)
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            js/window.speechSynthesis.getVoices
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            js/window.addEventListener |beforeunload $ fn (event) (; persist-storage!) (js/speechSynthesis.cancel)
            ; repeat! 60 persist-storage!
            ; let
                raw $ js/localStorage.getItem (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |mount-target $ quote
          def mount-target $ .!querySelector js/document |.app
        |persist-storage! $ quote
          defn persist-storage! () $ .!setItem js/localStorage (:storage-key config/site)
            format-cirru-edn $ :store @*reel
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
        |repeat! $ quote
          defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
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
    |app.schema $ {}
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
            :messages $ []
      :ns $ quote (ns app.schema)
    |app.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case-default op
              do (println "\"unknown op:" op) store
              :states $ update-states store data
              :hydrate-storage data
              :message $ update store :messages
                fn (xs) (conj xs data)
              :clear $ assoc store :messages ([])
              :swap-messages $ assoc store :messages data
      :ns $ quote
        ns app.updater $ :require
          respo.cursor :refer $ update-states
