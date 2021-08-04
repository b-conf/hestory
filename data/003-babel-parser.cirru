
{}
  :id |003-babel-parser
  :title "|章节 3 - 关于 babel parser"
  :messages $ []
    {}
      :author "|Hax"
      :text "|再吐槽一下—— babel-parser的代码实在有点烂，主要是大量的mutable对象，这也算了，偏偏许多方法还不是void的，直接返回传入的mutable对象，"
    {}
      :author "|Hax"
      :text "|调用的时候呢，有的会拿return的结果，有的则不拿（就是当成void在用），读这样的代码很费脑子。。。 "
    {}
      :author "|太狼"
      :text "|还是 ts 的好，严格 visitor pattern [奸笑] "
    {}
      :author "|Hax"
      :text "|感觉这个跟ts还是flow倒是关系不大，除非你强制不准把非void的方法当成void来调用（就是一定要有个变量去存结果）。 "
    {}
      :author "|Hax"
      :text "|主要还是当时写代码的人的问题 "
    {}
      :author "|Hax"
      :text "|当然，parser本来就比较费脑，要不断的推导现在的状态变化。。。脑子要爆了。 "
    {}
      :author "|天猪，UC"
      :text "|TS 我一直很不习惯的一点就是， tslint 太弱了，比起 eslint "
    {}
      :author "|太狼"
      :text "|对比 eslint 哪方面比较弱？ "
    {}
      :author "|nonamesheep"
      :text "|很多地方弱 "
    {}
      :author "|太狼"
      :text "|没用过 eslint 😂 "
    {}
      :author "|太狼"
      :text "|之前写 js 的时候一直是 standard "
    {}
      :author "|nonamesheep"
      :text "|主要是 rule 没 eslint 丰富 "
    {}
      :author "|nonamesheep"
      :text "|比如https://eslint.org/docs/rules/no-else-return "
    {}
      :author "|nonamesheep"
      :text "|https://eslint.org/docs/rules/dot-notation "
    {}
      :author "|nonamesheep"
      :text "|这些都是没的 "
    {}
      :author "|太狼"
      :text "|难怪看到一些项目的 CI 上把 ts 的 target 设置到 ESNext 再 eslint 一遍 "
    {}
      :author "|太狼"
      :text "|原来是这么一回事 "
    {}
      :author "|太狼"
      :text "|不过 tslint 有这个 https://github.com/SonarSource/SonarTS ，很骚气，我们在用 "
    {}
      :author "|太狼"
      :text "|[图片: ***.jpg] "
    {}
      :author "|太狼"
      :text "|这种都能报错 "
    {}
      :author "|Trotyl"
      :text "|也有反过来的，比如 tslint 有 no-default-export（https://palantir.github.io/tslint/rules/no-default-export/ ），eslint 就没有（不算第三方插件）。。[皱眉] "
    {}
      :author "|徐飞"
      :text "|刚才这段代码是什么问题啊 "
    {}
      :author "|太狼"
      :text "|Credentials should not be hard-coded (no-hardcoded-credentials) "
    {}
      :author "|nonamesheep"
      :text "|sonar这个牛啊 "
    {}
      :author "|徐飞"
      :text "|这个是怎么做到的 "
    {}
      :author "|nonamesheep"
      :text "|Custom list for variable names and patterns which are looked up in string literals can be provided. Default list is \"password\",\"pwd\",\"passwd\". "
    {}
      :author "|nonamesheep"
      :text "|好像就是扫源码看关键字 "
    {}
      :author "|太狼"
      :text "|嗯，当然不可能是机器学习 "
    {}
      :author "|徐飞"
      :text "|[强] "
    {}
      :author "|Jasin Yip"
      :text "|简单够用[呲牙] "
    {}
      :author "|Evan"
      :text "|ESLint 也可以 lint TS，不过还不是特别完善就是了 "
    {}
      :author "|Hax"
      :text "|对我来说，tslint的最大缺点是不支持 semicolon-less 风格 [捂脸] "
    {}
      :author "|小问"
      :text "|这个可以调…… "
    {}
      :author "|Trotyl"
      :text "|https://palantir.github.io/tslint/rules/semicolon/ 有 never 呀。。[皱眉] "
    {}
      :author "|Hax"
      :text "|调不了。 "
    {}
      :author "|Hax"
      :text "|搜一下，我提过issue "
    {}
      :author "|小问"
      :text "|我用tslint就不写分号 "
    {}
      :author "|Hax"
      :text "|简单说，不支持分号前置（会触发其他一堆rule） "
    {}
      :author "|Hax"
      :text "|意味着你在需要前置的地方必须换成在上一行后置。。。 "
    {}
      :author "|Hax"
      :text "|当然在有lint的情况下也不是不行。。。但是从我的感受来说就。。。 "
    {}
      :author "|小问"
      :text "|额……必须有的地方我还是会后置的 "
    {}
      :author "|Hax"
      :text "|这个需要说明一下，“纯粹”的semicolon-less风格其实是指分号前置风格。 "
    {}
      :author "|Hax"
      :text "|当然，有一个workaround，就是也不后置也不前置，分号单独一行 [捂脸] "
    {}
      :author "|米粽"
      :text "|精彩…… "
    {}
      :author "|Hax"
      :text "|注意，后置是不能忍的，因为前置分号风格的最大优点是：你一看第一个字符就知道要前置，并且不用回溯看上一行末尾。 "
    {}
      :author "|Hax"
      :text "|所以单独一行也算勉强保持了这个优点。 "
    {}
      :author "|Hax"
      :text "|@Hux 我刚刚惊讶的发现 `$FlowSubType` 并不等价于 `$SubType`，而且 `$FlowSubType` 搜索google是一片空白。。。[捂脸] 吐血。 "
    {}
      :author "|Hax"
      :text "|看来要知道这玩意儿是啥只能靠猜，或者看flow的源码了。。。 "
    {}
      :author "|Hax"
      :text "|看来刚刚这个是错怪flow了，原来 `$FlowSubtype` 是babel项目在 `.flowconfig` 里配置出来的。。。[捂脸]"
    {}
      :author "|Bot"
      :text "|(播放完成)"
