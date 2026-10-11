
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
                store $ :store reel
                states $ :states store
                cursor $ decode-map-as
                  option:unwrap-or (get states :cursor) ([])
                  :: 'List 'Dynamic
                state $ decode-map-as
                  option:unwrap-or (get states :data)
                    {} (:content |) (:voice? false)
                  :: 'Map 'Tag 'Dynamic
                voice? $ decode-map-as
                  option:unwrap-or (get state :voice?) false
                  , 'Bool
                messages $ :messages store
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
                        d! $ schema/Op :states cursor $ assoc state :voice? (not voice?)
                div
                  {} $ :class-name $ str-spaced css/expand css/column
                  memof1-call comp-header
                  comp-messages messages
                  memof1-call comp-input $ >> states :input
                  when dev? $ comp-typed-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'reel.typed/State 'app.schema/Op 'app.schema/Store
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
                fn (e d!)
                  d! $ schema/Op :clear
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
                cursor $ decode-map-as
                  option:unwrap-or (get states :cursor) ([])
                  :: 'List 'Dynamic
                state $ decode-map-as
                  option:unwrap-or (get states :data)
                    {} $ :content |
                  :: 'Map 'Tag 'Dynamic
                content $ decode-map-as
                  option:unwrap-or (get state :content) |
                  , 'String
              div
                {} $ :style $ merge ui/row-middle
                  {} (:padding "|6px 10px")
                    :background-color $ hsl 0 0 97
                    :border-top $ str "|1px solid " $ hsl 0 0 90
                textarea $ {} (:value content) (:placeholder |Reply...)
                  :style $ merge ui/textarea ui/expand $ {} (:height 40) (:line-height |24px) (:border :none)
                  :on-input $ fn (e d!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Enum
                          :return 'Unit
                      :return 'Unit
                    d! $ schema/Op :states cursor $ assoc state :content
                      expect-string |input.value $ option:unwrap $ get e :value
                  :autofocus true
                  :on-keydown $ fn (e d!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Enum
                          :return 'Unit
                      :return 'Unit
                    let
                        event $ unsafe-coerce
                          option:unwrap $ get e :event
                          , 'app.comp.container/InputKeyboardEventHost
                        key $ .-key event
                      when (= |Enter key) (.prevent-default! event)
                        let
                            target $ option:unwrap $ js-nullish->option (.-target event)
                          d! $ schema/Op :message $ %{} schema/Message (:author |Me)
                            :text $ .-value target
                            :code? false
                            :floor $ Option :none
                        d! $ schema/Op :states cursor $ assoc state :content |
                        scroll-view!
                    , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Dynamic 'Dynamic
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
                      idx $ :idx info
                      title $ :title info
                      messages $ :messages info
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
                author $ :author content
                floor-label $ match (:floor content)
                  (:some message-floor) (str message-floor)
                  (:none) |_
                code? $ :code? content
                text $ :text content
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
            :args $ [] 'app.schema/Message
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
            :args $ [] $ :: 'List 'app.schema/Message
        'effect-render-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-render-icon (label) (action el at?)
            match action
              :mount $ let
                  svg-ns |http://www.w3.org/2000/svg
                  svg $ js/document.createElementNS svg-ns |svg
                .!appendChild el svg
                jdenticon/update svg label
              :update $ let
                  svg $ .!querySelector el |svg
                jdenticon/update svg label
              _ &unit
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
                  text $ if (:code? msg) |Code $ :text msg
                  next! $ fn () $ read-content (rest messages) (inc idx) d!
                d! $ schema/Op :message $ assoc msg :floor (Option :some idx)
                match api-target
                  |xunfei $ speakXunfei (santinize-voice text) next!
                  |azure $ synthesizeAzureSpeech (santinize-voice text)
                    option:unwrap-or (get-env |azure-key) |
                    fn $
                    , next!
                  |audio $ requestAudioSpeech
                    option:unwrap-or (get-env |audio-host) |
                    santinize-voice text
                    , next!
                  _ $ speech! (santinize-voice text) next!
                scroll-view!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'List 'app.schema/Message) 'Number $ :: 'Fn
              {} (:return 'Unit)
                :args $ [] 'Enum
        'reading-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def reading-list
            []
              schema/decode-story $ load-data |data/2019-08-15-serverless.cirru
              schema/decode-story $ load-data |data/2019-07-22-http2-perf.cirru
              schema/decode-story $ load-data |data/2019-07-10-deps-lock.cirru
              schema/decode-story $ load-data |data/2019-07-02-yield-syntax.cirru
              schema/decode-story $ load-data |data/2019-06-06-top-level-await.cirru
              schema/decode-story $ load-data |data/2019-03-21-decorator-change.cirru
              schema/decode-story $ load-data |data/2018-12-07-chrome-ie.cirru
              schema/decode-story $ load-data |data/2018-11-19-private-field-problem.cirru
              schema/decode-story $ load-toml-data
              schema/decode-story $ load-data |data/2018-11-14-js-build-speed.cirru
              schema/decode-story $ load-data |data/2018-11-06-web-comps-templates.cirru
              schema/decode-story $ load-data |data/2018-11-06-svelte-proposal.cirru
              schema/decode-story $ load-data |data/2018-11-01-react-hooks-internals.cirru
              schema/decode-story $ load-data |data/2018-10-26-react-hooks-wonder.cirru
              schema/decode-story $ load-data |data/2018-10-21-react-class-syntax.cirru
              schema/decode-story $ load-data |data/2018-09-27-vue-ts.cirru
              schema/decode-story $ load-data |data/2018-08-23-worker-dom.cirru
              schema/decode-story $ load-data |data/2018-07-21-algebraic-interrupts-early.cirru
              schema/decode-story $ load-data |data/2018-08-10-write-book.cirru
              schema/decode-story $ load-data |data/2018-08-18-babel-compile.cirru
              schema/decode-story $ load-data |data/2018-07-13-vue-internals.cirru
              schema/decode-story $ load-data |data/2018-07-04-babel-parser.cirru
              schema/decode-story $ load-data |data/2018-06-15-vue-stars.cirru
              schema/decode-story $ load-data |data/2018-05-11-layered-apis.cirru
              schema/decode-story $ load-data |data/2018-07-23-demo.cirru
          :examples $ []
          :schema $ :: 'List 'app.schema/Story
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
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'String $ :: 'Fn
              {} (:return 'Unit)
                :args $ []
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
          :code $ quote $ defn swap-messages (messages d!)
            d! $ schema/Op :swap-messages messages
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'List 'app.schema/Message)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Enum
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
            respo-md.comp.md :refer $ comp-md
            app.config :refer $ dev? api-target
            memof.once :refer $ memof1-call
            |jdenticon :as jdenticon
            |../xunfei/sdk :refer $ speakXunfei
            |../assets/play-azure :refer $ synthesizeAzureSpeech
            |../assets/play-audio :refer $ requestAudioSpeech
            feather.core :refer $ comp-icon comp-i
            |toml :as toml
            js-ffi.contract :refer $ [] expect-string
            app.schema :as schema
            reel.comp.reel :refer $ comp-typed-reel
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
          :code $ quote $ defatom *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'app.schema/Op 'app.schema/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when
              and config/dev? $ not= :states $ &enum:nth op 0
              js/console.log |Dispatch: op
            match (typed/decode-control op)
              (:some control)
                reset! *reel $ typed/apply-control updater @*reel control
              (:none)
                reset! *reel $ typed/record-op updater @*reel (assert-type op 'app.schema/Op) (generate-id!)
                  :timestamp $ date-now-snapshot
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            js/window.speechSynthesis.getVoices
            render-app!
            add-watch! *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            js/window.addEventListener |beforeunload $ fn (event) (js/speechSynthesis.cancel)
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            narrow-element $ option:unwrap $ query-selector |.app
          :examples $ []
          :ffi $ {} (:backend :js) (:target :browser)
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ []
            :features $ #{} :js-ffi
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            js-ffi.browser/storage-set!
              option:unwrap $ get config/site :storage-key
              format-cirru-edn $ :store @*reel
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ typed/refresh updater @*reel schema/store
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
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            reel.typed :as typed
            js-ffi.shared :refer $ date-now-snapshot
            respo.ffi.browser :refer $ narrow-element
            js-ffi.browser :refer $ query-selector
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Message (:author 'String) (:text 'String) (:code? 'Bool)
            :floor $ :: 'Option 'Number
          :examples $ []
          :schema $ :: 'StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (:: 'List 'Dynamic) 'Dynamic
            :message 'app.schema/Message
            :swap-messages $ :: 'List 'app.schema/Message
            :clear
            :hydrate-storage 'app.schema/Store
          :examples $ []
          :schema $ :: 'EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ :: 'Map 'Dynamic 'Dynamic
            :messages $ :: 'List 'app.schema/Message
          :examples $ []
          :schema $ :: 'StructDef
        'Story $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Story (:idx 'String) (:title 'String)
            :messages $ :: 'List 'app.schema/Message
          :examples $ []
          :schema $ :: 'StructDef
        'decode-message $ %{} 'CodeEntry
          :doc "|Checked legacy Map-to-Message decoder. Wrong field types are rejected rather than assumed from a schema."
          :code $ quote $ defn decode-message (data)
            decode-map-as (message-input data) Message
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Message)
            :args $ [] 'Dynamic
        'decode-story $ %{} 'CodeEntry
          :doc "|Checked history decoder; normalize missing message code flags before recursively decoding Story and Message."
          :code $ quote $ defn decode-story (data)
            let
                fields $ decode-map-as data $ :: 'Map 'Tag 'Dynamic
                messages $ decode-map-as
                  option:unwrap $ get fields :messages
                  :: 'List 'Dynamic
              decode-map-as
                assoc fields :messages $ map messages message-input
                , Story
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Story)
            :args $ [] 'Dynamic
        'message-input $ %{} 'CodeEntry
          :doc "|Normalize legacy message defaults only at the Cirru/TOML data boundary; checked nominal decoding happens afterwards."
          :code $ quote $ defn message-input (data)
            merge
              {} (:author |) (:text |) (:code? false)
              decode-map-as data $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            %{} Store
              :states $ {} $ :cursor ([])
              :messages $ []
          :examples $ []
          :schema $ :: 'app.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s)
                assoc store :states $ assert-type
                  update-state-tree (:states store) cursor s
                  :: 'Map 'Dynamic 'Dynamic
              (:hydrate-storage data) data
              (:message data)
                assoc store :messages $ append (:messages store) data
              (:clear)
                assoc store :messages $ []
              (:swap-messages data) (assoc store :messages data)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Store)
            :args $ [] 'app.schema/Store 'app.schema/Op 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require
            respo.cursor :refer $ update-state-tree
            app.schema :as schema
