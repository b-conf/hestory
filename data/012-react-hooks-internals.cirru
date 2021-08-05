
{}
  :idx |012
  :title "|React Hooks 内部"
  :messages $ []
    {}
      :author "|chenyong"
      :text "|https://github.com/jaredly/hooks-experimental/blob/master/example/src/App.re"
    {}
      :author "|Hax"
      :text "|@chenyong 你一开始觉得hooks很黑魔法，我猜是因为 useXXX 实际上是根据当时调用的时候找一个全局变量 ReactCurrentOwner ... 从味道上说，这种写法很差。但是js的框架确实是可以用这种方式的 —— 因为js是“单线程”的，哈哈哈。 "
    {}
      :author "|chenyong"
      :text "|毕竟 clojure 设计对这种东西挺敏感，要是更深的 fp 用户就更加了 "
    {}
      :author "|chenyong"
      :text "|这些语言也不是照顾单线程设计的 "
    {}
      :author "|Hax"
      :text "|不单是fp的问题，所有正常程序员都会对这种查找当前一个可变的全局变量表示：这是什么鬼。 "
    {}
      :author "|chenyong"
      :text "|[捂脸] 偷偷摸摸藏了一个状态 "
    {}
      :author "|chenyong"
      :text "|看到黄玄转了一个 scala 用户写的 hooks 的文章 "
    {}
      :author "|Hax"
      :text "|也就是，它实际上是运用了语言本身以外的约束，你光从语言本身出发是看不出来它是什么东西的。 "
    {}
      :author "|chenyong"
      :text "|https://paulgray.net/an-alternative-design-for-hooks/ "
    {}
      :author "|Hax"
      :text "|扫了一眼，感觉并没有改变黑魔法的本质。。。 "
    {}
      :author "|Hax"
      :text "|我昨天开始在写一篇文章。也有一个替代方案，待会儿拿给你们看。 "
    {}
      :author "|chenyong"
      :text "|至少是肉眼可见的黑了 "
    {}
      :author "|chenyong"
      :text "|[嘿哈] "
    {}
      :author "|Hax"
      :text "|他这个方式，多个 use XXX 写起来比较烦人。 "
    {}
      :author "|Hax"
      :text "|当然用了 syntax sugar 好像还凑活。 "
    {}
      :author "|吴名扬"
      :text "|（这语法糖不就是do-notation那套嘛 "
    {}
      :author "|Hax"
      :text "|对。 "
    {}
      :author "|引证"
      :text "|(Quote 前文) 事实上藏了很多状态啊 "
    {}
      :author "|chenyong"
      :text "|do notation 是一眼能看出来的，usestate 像是伪装了 "
    {}
      :author "|引证"
      :text "|我之前看angular解释器，它现在为了tree shacking把if改成很多独立函数，里面很多函数名就是beginxxx()和endxxx() "
    {}
      :author "|引证"
      :text "|不过这些函数对用户来说不可见，倒也不会引起什么问题 "
    {}
      :author "|chenyong"
      :text "|angular 整个模板充满 dsl，至少有心理准备呢 "
    {}
      :author "|Hax"
      :text "|不过现在hooks有一些地方是比较诡异的。比如 useState(init) 这个init其实是每次更新都会被执行的。 "
    {}
      :author "|chenyong"
      :text "|react 里的函数，以前喊 pure function 那么响，现在又主动引入状态，怪怪的 "
    {}
      :author "|Hax"
      :text "|主要是，整个函数其实每次都会被执行。。。这跟一般的预期不一样。 "
    {}
      :author "|引证"
      :text "|useState(init) 这个没办法控制啊，JS又没有一个卫生宏的语义能让这个init不执行 "
    {}
      :author "|E0"
      :text "|把它变成一个函数 "
    {}
      :author "|Hax"
      :text "|是。所以hooks看上去是黑魔法。 "
    {}
      :author "|Hax"
      :text "|是的，变成函数就只会执行一次。 "
    {}
      :author "|Hax"
      :text "|其实道理上，为啥要每次都执行呢？完全可以不每次执行。 "
    {}
      :author "|E0"
      :text "|只是因为写起来最简单吧？ "
    {}
      :author "|chenyong"
      :text "|react 需要 macro (逃 "
    {}
      :author "|E0"
      :text "|ReactConf 上面的演示，一大卖点就是删代码 [抠鼻] "
    {}
      :author "|Hax"
      :text "|这是我黑react的点。react的玩法和js不“兼容”。你写react不是在写js。就好像当初大家喷写jQuery不是写js。 "
    {}
      :author "|徐飞"
      :text "|+1 "
    {}
      :author "|徐飞"
      :text "|不可能的，因为这是两个群体的不同诉求 "
    {}
      :author "|Hax"
      :text "|我觉得还是可以的。待会儿我试试写一个。 "
    {}
      :author "|徐飞"
      :text "|一个群体是希望跟js贴近，另外一个其实是不愿意在js上的 "
    {}
      :author "|E0"
      :text "|他们就是不满意 JS 啊 "
    {}
      :author "|yubo"
      :text "|[呲牙]这是React Team 改的？ "
    {}
      :author "|引证"
      :text "|“不爽不要用“ "
    {}
      :author "|引证"
      :text "|dan那个视频我昨天也看了 "
    {}
      :author "|引证"
      :text "|按照他的说法，这才是react本该有的面目 "
    {}
      :author "|引证"
      :text "|以前是走了弯路 "
    {}
      :author "|引证"
      :text "|(Quote 前文) 删代码本质上就是去掉了一堆wrap，现阶段的react，wrap太多了，各种HoC或者render props "
    {}
      :author "|E0"
      :text "|（他们就是要用 mixin） "
    {}
      :author "|小问"
      :text "|HoC还挺好的额 "
    {}
      :author "|E0"
      :text "|Hooks 相比 Mixin，至少可维护性上还是好一点的吧 "
    {}
      :author "|E0"
      :text "|Hooks 只是语言层的 Mixin 的一个代替品 "
    {}
      :author "|Hux"
      :text "|(Quote 前文) 因为 Haskell 的 do 不看类型的话其实也是藏着的 = = "
    {}
      :author "|Hux"
      :text "|@Hax @徐飞 恩他们就是不想陪 JS 玩了 "
    {}
      :author "|Hux"
      :text "|整个 FB 前端其实从 Adam Wolff （React、RN、Flux、Reason、GraphQL 共同老大）开始就是 FP 粉（ "
    {}
      :author "|chenyong"
      :text "|他们这么搞倒是便宜了 clojurescript，reason 代码还没火起来，clojurescript 这边先省了很多工作 "
    {}
      :author "|引证"
      :text "|你们现实一点啊 "
    {}
      :author "|Hux"
      :text "|啥不现实？ "
    {}
      :author "|徐飞"
      :text "|现实不现实重要吗 "
    {}
      :author "|引证"
      :text "|分裂啊 "
    {}
      :author "|徐飞"
      :text "|满足自身了 "
    {}
      :author "|Hux"
      :text "|谁跟谁分裂？ "
    {}
      :author "|引证"
      :text "|叔之前说的分裂状态会真的发生 "
    {}
      :author "|徐飞"
      :text "|之前其实是内部人意犹未尽 "
    {}
      :author "|引证"
      :text "|react和react "
    {}
      :author "|Hux"
      :text "|这就是 React，核心社区没听到什么分裂声音 "
    {}
      :author "|引证"
      :text "|因为hooks还没有开始应用 "
    {}
      :author "|Hux"
      :text "|proposal ( "
    {}
      :author "|引证"
      :text "|我相信未来业界会有传统派(extends)和function派的分裂 "
    {}
      :author "|引证"
      :text "|工程上来说，传统派会占多数 "
    {}
      :author "|徐飞"
      :text "|[机智] "
    {}
      :author "|Hux"
      :text "|跟工程不工程有啥关系……我觉得国内总觉 FP 是新东西才是问题 "
    {}
      :author "|引证"
      :text "|我并不认为官方指哪条路，业界就会跟着转向 "
    {}
      :author "|引证"
      :text "|你理解错我的意思了，它最大的问题是，它一开始不是这样的 "
    {}
      :author "|引证"
      :text "|但现在react已经不是小体量了 "
    {}
      :author "|Hux"
      :text "|所以呢……JS、Vue、Angular 哪个不天天在改变了 "
    {}
      :author "|引证"
      :text "|angular[捂脸] "
    {}
      :author "|吴名扬"
      :text "|(Quote 前文)我总觉得React 团队不喜欢 JS "
    {}
      :author "|chenyong"
      :text "|react 作者不喜欢 js "
    {}
      :author "|Hax"
      :text "|不喜欢js不要紧，问题是这对js的发展有负面影响（很多人以为react的js才是js），包括bound的问题，包括狗日的class field提案，都受到react的负面影响。 "
    {}
      :author "|引证"
      :text "|哈哈哈，我想起那些讨论经常用react举例 "
    {}
      :author "|Hax"
      :text "|而且关键在于，其实可以用符合js的方式写react的。。。 "
    {}
      :author "|引证"
      :text "|毕竟业界top1啊，不能忽视 "
    {}
      :author "|Hux"
      :text "|@Hax class field 的锅怎么也 react 背了! "
    {}
      :author "|Hax"
      :text "|说来话长。 "
    {}
      :author "|Hax"
      :text "|不能全算在react头上，但是react至少要背50%的锅。 "
    {}
      :author "|Hax"
      :text "|因为field提案最初的动机就是让react写起来爽一点。 "
    {}
      :author "|chenyong"
      :text "|拿别的语言的开发习惯带坏开发者  "
    {}
      :author "|Hax"
      :text "|我其实最好react都用hooks，这样可以去掉field提案的一个大use case。 "
    {}
      :author "|Hax"
      :text "|当然，从生态的角度是可以理解的。 "
    {}
      :author "|徐飞"
      :text "|因为看到 Angular 当年吃的亏 "
    {}
      :author "|Hux"
      :text "|怎么说呢……在 React Core Team 或者前队员的……没有不粉 ML 或者亲属的 （OCaml/Haskell/Elm/Rust/Swift)……Jordan 曾说过 “JS 最多能发展成一个 untyped OCaml （这是对他的表扬）"
    {}
      :author "|Hax"
      :text "|来，我写了一个不用黑魔法的、符合js的 hooks alternative 代码示例："

    {}
      :author "|Bot"
      :text "|(播放完成)"
