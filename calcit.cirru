
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {} $ :js-ffi :error
      :modules $ [] |respo.calcit/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-feather.calcit/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'AudioNodeHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait AudioNodeHost
            .remove! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/AudioNodeHost
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :remove! |remove
          :schema $ :: 'Trait
        'AudioNodeListHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait AudioNodeListHost
            .for-each! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/AudioNodeListHost $ :: 'Fn
                {}
                  :args $ [] 'app.comp.container/AudioNodeHost 'Number 'app.comp.container/AudioNodeListHost
                  :return 'Unit
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :for-each! |forEach
          :schema $ :: 'Trait
        'InputKeyboardEventHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait InputKeyboardEventHost (:key 'String)
            :target $ :: 'JsNullish 'js-ffi.browser/DomInputHost
            .prevent-default! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/InputKeyboardEventHost
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :prevent-default! |preventDefault
          :schema $ :: 'Trait
        'ScrollChildHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ScrollChildHost
            .scroll-into-view! $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/ScrollChildHost
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :scroll-into-view! |scrollIntoView
          :schema $ :: 'Trait
        'ScrollTargetHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait ScrollTargetHost
            :lastElementChild $ :: 'JsNullish 'app.comp.container/ScrollChildHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
          :schema $ :: 'Trait
        'SpeechUtteranceHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait SpeechUtteranceHost (:lang 'String) (:rate 'Number) (:voice 'app.comp.container/SpeechVoiceHost)
            :on-end $ :: 'Fn $ {}
              :args $ [] 'JsObject
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} (:lang |lang) (:on-end |onend) (:rate |rate) (:voice |voice)
            :writable $ #{} :lang :on-end :rate :voice
          :schema $ :: 'Trait
        'SpeechVoiceHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait SpeechVoiceHost (:lang 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :lang |lang
          :schema $ :: 'Trait
        'SpeechVoiceListHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait SpeechVoiceListHost
            .filter $ :: 'Fn $ {}
              :args $ [] 'app.comp.container/SpeechVoiceListHost $ :: 'Fn
                {}
                  :args $ [] 'app.comp.container/SpeechVoiceHost 'Number 'app.comp.container/SpeechVoiceListHost
                  :return 'Bool
              :return 'app.comp.container/SpeechVoiceListHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object) (:target :browser)
            :names $ {} $ :filter |filter
          :schema $ :: 'Trait
        'at-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn at-pattern () (new js/RegExp |@)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
            :features $ #{} :js-ffi
        'comp-avatar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-avatar (label)
            [] (effect-render-icon label)
              div $ {} $ :class-name style-avatar
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ option:unwrap $ get reel :store
                states $ option:unwrap $ get store :states
                cursor $ option:unwrap-or (get states :cursor) ([])
                state $ option:unwrap-or (get states :data)
                  {} (:content |) (:voice? false)
                voice? $ option:unwrap-or (get state :voice?) false
                messages $ option:unwrap-or (get store :messages) ([])
              div
                {}
                  :class-name $ str-spaced css/global css/fullscreen css/row
                  :style $ {} (:background-color :white) (:font-size 16)
                div
                  {} (:class-name css/column)
                    :style $ {} (:width |28%)
                      :background-color $ hsl 0 0 94
                  memof1-call comp-menu voice?
                  div
                    {} (:class-name css/row-parted)
                      :style $ {} (:padding "|0 8px") (:user-select :none)
                    a $ {} (:href |https://github.com/b-conf/hestory) (:target |_blank) (:inner-text "|源码查看 GitHub.")
                      :style $ {} $ :font-size 14
                    span $ {} (:inner-text |Voice)
                      :style $ {} (:cursor :pointer) (:font-family ui/font-fancy)
                        :color $ if voice? (hsl 240 60 60) (hsl 0 0 80)
                      :on-click $ fn (e d!)
                        d! cursor $ update state :voice? not
                div
                  {} $ :class-name $ str-spaced css/expand css/column
                  memof1-call comp-header
                  comp-messages messages
                  memof1-call comp-input $ >> states :input
                  when dev? $ comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'comp-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-header ()
            div
              {} $ :class-name $ str-spaced css/row-parted style-header
              span $ {}
              span
                {} $ :on-click $ fn (e d!) (js/document.body.requestFullscreen)
                <> |Hestory $ {} $ :font-family ui/font-fancy
              comp-icon :trash
                {} (:font-size 20)
                  :color $ hsl 320 80 70
                  :line-height |20px
                  :vertical-align :middle
                  :cursor :pointer
                fn (e d!) (d! :clear nil)
                  let
                      nodes $ unsafe-coerce (js/document.querySelectorAll |audio) 'app.comp.container/AudioNodeListHost
                    .for-each! nodes $ fn (node i a)
                      .remove! $ unsafe-coerce node 'app.comp.container/AudioNodeHost
                  js/window.speechSynthesis.cancel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
            :features $ #{} :js-ffi
        'comp-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-input (states)
            let
                cursor $ option:unwrap-or (get states :cursor) ([])
                state $ option:unwrap-or (get states :data)
                  {} $ :content |
                content $ option:unwrap-or (get state :content) |
              div
                {} $ :style $ merge ui/row-middle
                  {} (:padding "|6px 10px")
                    :background-color $ hsl 0 0 97
                    :border-top $ str "|1px solid " $ hsl 0 0 90
                textarea $ {} (:value content) (:placeholder |Reply...)
                  :style $ merge ui/textarea ui/expand $ {} (:height 40) (:line-height |24px) (:border :none)
                  :on-input $ fn (e d!)
                    d! cursor $ assoc state :content $ option:unwrap-or (get e :value) |
                  :autofocus true
                  :on-keydown $ fn (e d!)
                    let
                        event $ unsafe-coerce
                          option:unwrap $ get e :event
                          , 'app.comp.container/InputKeyboardEventHost
                        key $ .-key event
                      when (= |Enter key) (.prevent-default! event)
                        let
                            target $ option:unwrap $ js-nullish->option (.-target event)
                          d! :message $ {} (:author |Me)
                            :text $ .-value target
                        d! cursor $ assoc state :content |
                        scroll-view!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'comp-menu $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-menu (voice?)
            div
              {}
                :style $ {} (:padding "|16px 0") (:line-height |36px)
                :class-name css/expand
              list-> ({})
                -> reading-list $ map $ fn (info)
                  let
                      idx $ option:unwrap $ get info :idx
                      title $ option:unwrap $ get info :title
                      messages $ option:unwrap $ get info :messages
                    [] idx $ div
                      {}
                        :class-name $ str-spaced css/row-middle |hover-item style-entry
                        :on-click $ fn (e d!) (js/window.speechSynthesis.cancel)
                          if voice? (read-content messages 0 d!) (swap-messages messages d!)
                      comp-icon :link
                        {} (:font-size 14)
                          :color $ hsl 230 70 70
                          :line-height |14px
                        , nil
                      =< 2 nil
                      <> (str idx) style-ep-no
                      =< 8 nil
                      <> title
                      =< 8 nil
                      <>
                        str $ count messages
                        , style-message-count
              =< nil 80
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Bool
            :features $ #{} :js-ffi
        'comp-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-message (content)
            let
                author $ option:unwrap-or (get content :author) |
                floor-label $ option:unwrap-or (get content :floor) |_
                code? $ option:unwrap-or (get content :code?) false
                text $ option:unwrap-or (get content :text) |
              div
                {} (:class-name css/row)
                  :style $ {} (:width |98%) (:padding "|4px 10px")
                comp-avatar author
                =< 8 nil
                div
                  {} $ :class-name css/flex
                  div
                    {} $ :class-name style-message-area
                    div
                      {} $ :class-name css/row-parted
                      <> author
                      <> (str |# floor-label) style-floor
                    div
                      {} $ :class-name style-message
                      if code?
                        pre
                          {} $ :class-name style-message-code
                          code ({})
                            <> $ trim text
                        comp-md text $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'comp-messages $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-messages (messages)
            div
              {} $ :class-name css/expand
              =< nil 8
              list->
                {} $ :id |message-area
                map-indexed messages $ fn (idx message)
                  [] idx $ comp-message message
              if (empty? messages)
                div
                  {} (:class-name css/center)
                    :style $ {} $ :padding |40px
                  <> |Cleared. $ {} (:font-family ui/font-fancy) (:font-weight 500)
                    :color $ hsl 0 0 70
                    :font-style :italic
              =< nil 80
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'List 'Dynamic
        'effect-render-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-render-icon (label) (action el at?)
            case-default action nil
              :mount $ let
                  svg-ns |http://www.w3.org/2000/svg
                  svg $ js/document.createElementNS svg-ns |svg
                .!appendChild el svg
                jdenticon/update svg label
              :update $ let
                  svg $ .!querySelector el |svg
                jdenticon/update svg label
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'js-replace $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn js-replace (text pattern replacement)
            unsafe-coerce (.!replace text pattern replacement) 'String
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'load-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro load-data (path)
            let
                path-text $ assert-type path 'String
              &data-to-code $ parse-cirru-edn $ read-file path-text
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr 'Dynamic
            :required $ [] 'Syntax
        'load-toml-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn load-toml-data ()
            tagging-edn $ to-calcit-data $ toml/parse (slurp |data/2020-08-12-template-stringify.toml)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'read-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-content (messages idx d!)
            when
              not $ empty? messages
              let
                  msg $ option:unwrap $ first messages
                  code? $ option:unwrap-or (get msg :code?) false
                  body $ option:unwrap-or (get msg :text) |
                  text $ if code? |Code body
                d! :message $ assoc msg :floor idx
                case-default api-target
                  speech! (santinize-voice text)
                    fn () $ read-content (rest messages) (inc idx) d!
                  |xunfei $ speakXunfei (santinize-voice text)
                    fn () $ read-content (rest messages) (inc idx) d!
                  |azure $ synthesizeAzureSpeech (santinize-voice text) (get-env |azure-key)
                    fn $
                    fn () $ read-content (rest messages) (inc idx) d!
                  |audio $ requestAudioSpeech (get-env |audio-host) (santinize-voice text)
                    fn () $ read-content (rest messages) (inc idx) d!
                scroll-view!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'List 'Dynamic) 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'Tag 'Dynamic
        'reading-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def reading-list
            []
              identity $ load-data |data/2019-08-15-serverless.cirru
              identity $ load-data |data/2019-07-22-http2-perf.cirru
              identity $ load-data |data/2019-07-10-deps-lock.cirru
              identity $ load-data |data/2019-07-02-yield-syntax.cirru
              identity $ load-data |data/2019-06-06-top-level-await.cirru
              identity $ load-data |data/2019-03-21-decorator-change.cirru
              identity $ load-data |data/2018-12-07-chrome-ie.cirru
              identity $ load-data |data/2018-11-19-private-field-problem.cirru
              load-toml-data
              identity $ load-data |data/2018-11-14-js-build-speed.cirru
              identity $ load-data |data/2018-11-06-web-comps-templates.cirru
              identity $ load-data |data/2018-11-06-svelte-proposal.cirru
              identity $ load-data |data/2018-11-01-react-hooks-internals.cirru
              identity $ load-data |data/2018-10-26-react-hooks-wonder.cirru
              identity $ load-data |data/2018-10-21-react-class-syntax.cirru
              identity $ load-data |data/2018-09-27-vue-ts.cirru
              identity $ load-data |data/2018-08-23-worker-dom.cirru
              identity $ load-data |data/2018-07-21-algebraic-interrupts-early.cirru
              identity $ load-data |data/2018-08-10-write-book.cirru
              identity $ load-data |data/2018-08-18-babel-compile.cirru
              identity $ load-data |data/2018-07-13-vue-internals.cirru
              identity $ load-data |data/2018-07-04-babel-parser.cirru
              identity $ load-data |data/2018-06-15-vue-stars.cirru
              identity $ load-data |data/2018-05-11-layered-apis.cirru
              identity $ load-data |data/2018-07-23-demo.cirru
          :examples $ []
          :schema $ :: 'List 'Dynamic
        'santinize-voice $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn santinize-voice (text)
            js-replace
              js-replace text (at-pattern) "| at "
              url-pattern
              fn (target & args)
                let
                    url $ unsafe-coerce (new js/URL target) 'js-ffi.shared/UrlHost
                    host $ .-host url
                  str "| link to " (js-replace host |www. |) "| "
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'scroll-view! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn scroll-view! ()
            js/setTimeout
              fn () $ let
                  target-raw $ js/document.querySelector |#message-area
                when (js-present? target-raw)
                  let
                      target $ unsafe-coerce target-raw 'app.comp.container/ScrollTargetHost
                      child-raw $ .-lastElementChild target
                    when (js-present? child-raw)
                      let
                          child $ unsafe-coerce child-raw 'app.comp.container/ScrollChildHost
                        .scroll-into-view! child
              , 100
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'slurp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro slurp (path)
            read-file $ assert-type path 'String
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr 'Dynamic
            :required $ [] 'Syntax
        'speech! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn speech! (text cb)
            let
                t $ unsafe-coerce (new js/window.SpeechSynthesisUtterance text) 'app.comp.container/SpeechUtteranceHost
              set! (.-lang t) |zh-cn
              set! (.-rate t) 1.2
              let
                  voices $ unsafe-coerce (js/window.speechSynthesis.getVoices) 'app.comp.container/SpeechVoiceListHost
                  filtered $ .filter voices $ fn (voice i a)
                    includes? (.-lang voice) |zh
                  voice-raw $ aget filtered 3
                if (js-present? voice-raw)
                  set! (.-voice t) (unsafe-coerce voice-raw 'app.comp.container/SpeechVoiceHost)
                  js/console.warn "|no voice:" voices
              js/window.speechSynthesis.speak t
              set! (.-onend t)
                fn (event) (js/setTimeout cb 400)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'String 'Dynamic
            :features $ #{} :js-ffi
        'style-avatar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-avatar
            {} $ |& $ {} (:width 40) (:height 40)
              :border $ str "|1px solid " $ hsl 0 0 90
              :border-radius |2px
          :examples $ []
          :schema $ :: 'String
        'style-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-entry
            {} $ |& $ {} (:cursor :pointer) (:padding "|0 8px")
          :examples $ []
          :schema $ :: 'String
        'style-ep-no $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-ep-no
            {} $ |& $ {}
              :color $ hsl 0 0 70
              :font-size 12
              :font-family ui/font-code
          :examples $ []
          :schema $ :: 'String
        'style-floor $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-floor
            {} $ |& $ {} (:font-size 10)
              :color $ hsl 0 0 80
              :font-family ui/font-code
          :examples $ []
          :schema $ :: 'String
        'style-header $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-header
            {} $ |& $ {} (:padding "|4px 6px") (:font-weight 300) (:font-size 16)
              :background-color $ hsl 0 0 97
              :border-bottom $ str "|1px solid " $ hsl 0 0 90
          :examples $ []
          :schema $ :: 'String
        'style-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message
            {} $ |& $ {}
              :color $ hsl 0 0 40
              :font-size 16
              :line-height |24px
          :examples $ []
          :schema $ :: 'String
        'style-message-area $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-area
            {} $ |& $ {}
              :color $ hsl 0 0 70
              :font-size 12
              :line-height |18px
          :examples $ []
          :schema $ :: 'String
        'style-message-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-code
            {} $ |& $ {} (:font-size 14) (:margin 0) (:border-radius |4px)
              :border $ str "|1px solid " $ hsl 0 0 90
              :padding "|6px 8px"
          :examples $ []
          :schema $ :: 'String
        'style-message-count $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-message-count
            {} $ |& $ {} (:font-size 12)
              :background-color $ hsl 200 60 85
              :color :white
              :padding "|0px 5px"
              :border-radius |8px
              :line-height |16px
          :examples $ []
          :schema $ :: 'String
        'swap-messages $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn swap-messages (messages d!) (d! :swap-messages messages)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'List 'Dynamic)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Tag 'Dynamic
        'url-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn url-pattern () (new js/RegExp |https?:[\w\d\/_#\.\=\?\-\%]+)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'JsObject)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.core :as ui) (respo-ui.css :as css)
            respo.css :refer $ defstyle
            respo-ui.core :refer $ hsl
            respo.core :refer $ defcomp defeffect <> >> a div button textarea span input list-> create-element pre code
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            respo-md.comp.md :refer $ comp-md
            app.config :refer $ dev? api-target
            memof.once :refer $ memof1-call
            |jdenticon :as jdenticon
            |../xunfei/sdk :refer $ speakXunfei
            |../assets/play-azure :refer $ synthesizeAzureSpeech
            |../assets/play-audio :refer $ requestAudioSpeech
            feather.core :refer $ comp-icon comp-i
            |toml :as toml
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'api-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def api-target
            option:unwrap-or (get-env |api-target) |speech
          :examples $ []
          :schema $ :: 'String
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |dev
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} $ :storage-key |hestory
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when
              and config/dev? $ not= op :states
              js/console.log |Dispatch: op
            reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            js/window.speechSynthesis.getVoices
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            js/window.addEventListener |beforeunload $ fn (event) (js/speechSynthesis.cancel)
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target () (js/document.querySelector |.app)
          :examples $ []
          :ffi $ {} (:backend :js) (:target :browser)
          :schema $ :: 'Fn $ {}
            :args $ []
            :features $ #{} :js-ffi
            :return $ :: 'JsNullish 'JsObject
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            js-ffi.browser/storage-set!
              option:unwrap $ get config/site :storage-key
              format-cirru-edn $ option:unwrap $ get @*reel :store
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (mount-target) (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'repeat! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn repeat! (duration cb)
            js/setTimeout
              fn () (cb)
                repeat! (* 1000 duration) cb
              * 1000 duration
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    'app.schema $ %{} 'FileEntry
      :defs $ {} $ 'store
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {}
              :states $ {} $ :cursor ([])
              :messages $ []
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s) (update-states store cursor s)
              (:hydrate-storage data) data
              (:message data)
                update store :messages $ fn (xs)
                  if (list? xs) (conj xs data) ([] data)
              (:clear)
                assoc store :messages $ []
              (:swap-messages data) (assoc store :messages data)
              _ $ do (eprintln "|unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Dynamic 'Dynamic 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-states
