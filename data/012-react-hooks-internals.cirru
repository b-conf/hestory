
{}
  :idx |012
  :title "|React Hooks 内部"
  :messages $ []
    {}
      :author |Bot
      :text "|(2018年某一天)"

    {}
      :author "|Hax"
      :code? true
      :text "|\nimport React from 'react'\nexport function Clock(props, {state, lifecycle}) {\n  state.init({date: new Date()})\n  function clockTime() { return state.get().date.toLocaleTimeString() }\n  function tick() { state.set({date: new Date()}) }\n  lifecycle.mount(() => { \n    const timerID = setInterval(tick, 1000)\n    return () => { clearInterval(timerID) }\n  })\n  return props => (\n    <div>\n      <div>Hello, world!</div>\n      <div>It is {clockTime()}.</div>\n    </div>\n  )\n)}"
    {}
      :author "|徐飞"
      :text "|没说这个有问题，只是用户大部分不知道这些 "
    {}
      :author "|Hux"
      :text "|你这个就是把 implicit State monad 变成 explicit 的了嘛 "
    {}
      :author "|Hax"
      :text "|是啊，但是不用黑魔法了嘛。 "
    {}
      :author "|Hax"
      :text "|一目了然。 "
    {}
      :author "|徐飞"
      :text "|@Hax 办法多的是，cycle那种本质就是这个做法 "
    {}
      :author "|Hux"
      :text "|+1 "
    {}
      :author "|Hux"
      :text "|+2 "
    {}
      :author "|Hax"
      :text "|所有会js的人一看就明白。 "
    {}
      :author "|Hax"
      :text "|也没有前面说的每次执行的陷阱 "
    {}
      :author "|Hux"
      :text "|我觉得根源在于……这群人本来就不太在乎 React 是不是 JS "
    {}
      :author "|chenyong"
      :text "|[图片: ???.jpg] "
    {}
      :author "|chenyong"
      :text "|用个闭包 "
    {}
      :author "|徐飞"
      :text "|是啊，但大部分使用者不知道他们不在乎 "
    {}
      :author "|Hax"
      :text "|理解。所以我说他们最好都用reason去写react，我没意见。 "
    {}
      :author "|徐飞"
      :text "|@Hax +65536 "
    {}
      :author "|Hux"
      :text "|@徐飞 他们的第一用户是 Facebook 的工程师 "
    {}
      :author "|徐飞"
      :text "|是的 "
    {}
      :author "|Hux"
      :text "|FB new grad 本来就没几个会 JS 的 "
    {}
      :author "|Hux"
      :text "|所以无所谓 = = "
    {}
      :author "|徐飞"
      :text "|就是这情况 "
    {}
      :author "|Hux"
      :text "|我估计会 ML 的都比 JS 的多 "
    {}
      :author "|Hax"
      :text "|所以就把js带坏了啊。。。 "
    {}
      :author "|徐飞"
      :text "|刚才我也说了 "
    {}
      :author "|徐飞"
      :text "|[机智] "
    {}
      :author "|徐飞"
      :text "|大部分社区用户以为他们爱的是自己 "
    {}
      :author "|徐飞"
      :text "|其实他们爱的是自己公司的人 "
    {}
      :author "|Hax"
      :text "|比方说老是骂js的bound问题。。。但是你本来可以设计成根本不用bound的。。。明明是你设计缺陷，现在怪语言。。。 "
    {}
      :author "|Hux"
      :text "|是啊所以我们观点是一致的 = = "
    {}
      :author "|徐飞"
      :text "|所以为什么我说社区分裂 "
    {}
      :author "|Hux"
      :text "|React 之前所谓 \"Just JS\" 的 argument 的内涵更多的其实是 \"Just Programming Language\" （vs. template） "
    {}
      :author "|徐飞"
      :text "|我觉得会有这个趋向 "
    {}
      :author "|nonamesheep"
      :text "|对，Just Programming Language "
    {}
      :author "|Hax"
      :text "|我现在第一优先级的事，就是看看能不能拯救一下js（抵制field提案） "
    {}
      :author "|nonamesheep"
      :text "|不过好奇Facebook是怎么处理styling的"
    {}
      :author "|引证"
      :text "|@Hax [强]战士啊 "
    {}
      :author "|Hux"
      :text "|我觉得不会分裂的意思是……不“硬核”的玩家就退出这个社区了（ "
    {}
      :author "|Hux"
      :text "|然后 React 也不缺核心玩家 "
    {}
      :author "|Hax"
      :text "|field提案的最大问题，其实不在那个#弱鸡语法，而是在于它破坏了OO。 "
    {}
      :author "|徐飞"
      :text "|阿里系的大部分react开发者意识不到这个事，这个问题对阿里这种公司的意义远远大于对fb "
    {}
      :author "|徐飞"
      :text "|fb不会有任何损伤 "
    {}
      :author "|Hux"
      :text "|我同意…… "
    {}
      :author "|Hux"
      :text "|我就是站着说话不腰痛嘛 "
    {}
      :author "|Hax"
      :text "|赞同。阿里使用react就是技术战略层面的错误。 "
    {}
      :author "|徐飞"
      :text "|可能反而轻装上阵了 "
    {}
      :author "|E0"
      :text "|我司群里都没有什么人讨论hooks [抠鼻] "
    {}
      :author "|Evan"
      :text "|@Hax 你的那个方案没什么区别啊... "
    {}
      :author "|Hux"
      :text "|(Quote 前文) 你指 code style 还是 CSS "
    {}
      :author "|nonamesheep"
      :text "|css "
    {}
      :author "|Hax"
      :text "|百度不用react吧。。。至少从许可证风波之后？ "
    {}
      :author "|E0"
      :text "|用的 "
    {}
      :author "|Hux"
      :text "|FB 的 CSS 挫得一逼 "
    {}
      :author "|nonamesheep"
      :text "|[捂脸] "
    {}
      :author "|Hax"
      :text "|@Evan 有区别。我写的是factory方案，factory只会执行一次（类似constructor）。而hooks是每次都执行的。 "
    {}
      :author "|E0"
      :text "|现在最主流的方案好像已经是 styled-components 了？ "
    {}
      :author "|Evan"
      :text "|哦对。其实我也想过可以只执行一次，但会失去一个能力 "
    {}
      :author "|Hax"
      :text "|因为hooks每次都执行，所以需要 useXXX 都用黑魔法实现。 "
    {}
      :author "|Evan"
      :text "|就是给 useEffect 传更新后的 state，失去了一定的 composability "
    {}
      :author "|徐飞"
      :text "|就是cycle的选择，壳不变，值变 "
    {}
      :author "|Hax"
      :text "|但是即使用了黑魔法，也不能阻止大家在里面写出一些performance不好的东西。 "
    {}
      :author "|Evan"
      :text "|每次执行是有意义的 "
    {}
      :author "|E0"
      :text "|现在 styling 已经分裂成写 CSS 和写 SS 两个流派了…… "
    {}
      :author "|Evan"
      :text "|不每次执行会产生一个新的限制 "
    {}
      :author "|Evan"
      :text "|就是 state 一定要以 state.x 的形式去拿 "
    {}
      :author "|Evan"
      :text "|不过这个也可以说是更符合 js 的直觉... "
    {}
      :author "|Hax"
      :text "|对。符合js直觉！ "
    {}
      :author "|Hax"
      :text "|其实我们本来不需要useEffect这样的东西，直接在对应的地方写代码就完了。现在变成你还要考虑effect发生的时机。（后面有个数组参数，决定哪些prop触发，没有的话，就变成只在mount时触发） "
    {}
      :author "|Hax"
      :text "|然后有几种不同的useXXXEffect。。。 "
    {}
      :author "|Hax"
      :text "|不能说不好吧，但是思维方式是完全不一样的。 "
    {}
      :author "|徐飞"
      :text "|我们可以来预测 "
    {}
      :author "|徐飞"
      :text "|出现很多种互相有重叠的use "
    {}
      :author "|Hux"
      :text "|@Hax 对我觉得主要是思维模式差太多了（太不 JS 了） "
    {}
      :author "|徐飞"
      :text "|[奸笑] "
    {}
      :author "|Evan"
      :text "|@Hax 你那个改良 hooks 是很有价值的，因为它依然有同样的基于函数组合的能力，具备取代 mixin 又避免 mixin 的坑的能力 "
    {}
      :author "|Hax"
      :text "|现在有这样几个：useState/userReducer、userContext、userXXXEffect "
    {}
      :author "|E0"
      :text "|@Evan which is Vue 正需要的 [偷笑] "
    {}
      :author "|Hax"
      :text "|@Evan 其实与其说我这个是改良hooks，不如说我这个是把class-based component里的class给干掉了。 "
    {}
      :author "|Evan"
      :text "|其实把 useEffect 看作底层细节就好，在上面包装 useMounted, useUpdated 都很简单 "
    {}
      :author "|徐飞"
      :text "|@E0 123，124，234 "
    {}
      :author "|徐飞"
      :text "|[嘿哈] "
    {}
      :author "|Hax"
      :text "|确实，useEffect太抽象了，作为直接api不见得好用 "
    {}
      :author "|徐飞"
      :text "|@Hax 所以还会再包啊 "
    {}
      :author "|E0"
      :text "|@徐飞 如果是依赖同样的package而且不打包发布就没问题 "
    {}
      :author "|徐飞"
      :text "|为什么我说大家来预测以后出现多少个use，就写意思 "
    {}
      :author "|Hax"
      :text "|真的再包，还不如我写的那种方式好用 [呲牙] 至少省掉了一堆 import [调皮] "
    {}
      :author "|徐飞"
      :text "|这意思 "
    {}
      :author "|徐飞"
      :text "| "
    {}
      :author "|Hax"
      :text "|哦，你意思大家用了几个包好的useEffect啥的。 "
    {}
      :author "|E0"
      :text "|这个和polyfill类似，但是polyfill可以做到只发布原子功能 "
    {}
      :author "|徐飞"
      :text "|对 "
    {}
      :author "|徐飞"
      :text "|然后不同的人包着不同的东西"
    {}
      :author "|徐飞"
      :text "|有重叠"
    {}
      :author "|徐飞"
      :text "|124，123，234"
    {}
      :author "|引证"
      :text "|useEffect貌似未来会默认加第二个参数，这样本身就是 useMounted的意思"
    {}
      :author "|E0"
      :text "|同一个功能可能就有很多竞品才麻烦"
    {}
      :author "|徐飞"
      :text "|可以猜猜看么，两年后是不是这样"
    {}
      :author "|E0"
      :text "|@徐飞 更可能的是 124 1'23 2'34'"
    {}
      :author "|徐飞"
      :text "|[发抖]"
    {}
      :author "|E0"
      :text "|除非官方来个 react-hooks 一统天下 [偷笑]"
    {}
      :author "|chenyong"
      :text "|乱得跟 lisp 似的[鼓掌]"
    {}
      :author "|Hax"
      :text "|这个我倒是不太担心。。。useState默认把粗粒度state树给打成细粒度一堆state。useEffect类似。然后让大家自己组合。算是强制你们用自底向上的工程方法。[调皮]"
    {}
      :author "|徐飞"
      :text "|官方搞一下吧"
    {}
      :author "|徐飞"
      :text "|vue这头"
    {}
      :author "|E0"
      :text "|不可能，锅太大了背不动"
    {}
      :author "|Hax"
      :text "|我觉得用vue的时候，还是适合自顶向下的方式。。。最好不要来useState这样的东西。。。"
    {}
      :author "|徐飞"
      :text "|"
    {}
      :author "|Hax"
      :text "|而且vue干嘛需要reducer呢？完全不用。自己写一个model上带着的方法，不比字符串强？"
    {}
      :author "|引证"
      :text "|是啊，毕竟本质上不一样"
    {}
      :author "|Hax"
      :text "|本质其实是类似的。但是抽象方法不一样。"
    {}
      :author "|Hax"
      :text "|fp其实适合细粒度，自底向上的方式。"
    {}
      :author "|Hax"
      :text "|oo适合自顶向下的方式。"
    {}
      :author "|引证"
      :text "|vue和react又不是fp与oo之争"
    {}
      :author "|Hax"
      :text "|就前端工程而言，我更喜欢oo的方式，因为大多数人是普通人，没有人一上来就知道应该怎么拆分，只有从业务出发，慢慢的你才知道以后怎么拆分到更细节。"
    {}
      :author "|Hax"
      :text "|@引证 个人认为是有的。方法论的差异。"
    {}
      :author "|徐飞"
      :text "|我个人是愿意vue有hook的"
    {}
      :author "|E0"
      :text "|其实就是用 hook 代替 mixin"
    {}
      :author "|Hax"
      :text "|我讨厌react是因为，react用了fp的心，但是拿class来折腾，结果class的好处没用到，反而用成了负担，然后反过来说class不好（所以要bound和field）。"
    {}
      :author "|徐飞"
      :text "|我是在他身上找不到一点喜欢的"
    {}
      :author "|Evan"
      :text "|Vue 肯定会有 hook 的，但是 API 肯定会调整得更符合 Vue 用户的认知"
    {}
      :author "|Hax"
      :text "|改个名字吧，别叫hooks。。。"
    {}
      :author "|Evan"
      :text "|现在已经实现了 react 版本的 hook 了，技术上其实毫无难度，就看怎么调整"
    {}
      :author "|徐飞"
      :text "|改不改名无所谓的"
    {}
      :author "|Hax"
      :text "|有所谓的。。。。hooks这种名字就是太底层了，不明觉厉。。。"
    {}
      :author "|引证"
      :text "|react hooks现在这种实现，带来了不少限制，比如说必须以use开头"
    {}
      :author "|E0"
      :text "|[图片: ???.png]"
    {}
      :author "|E0"
      :text "|模拟 static..."
    {}
      :author "|Hax"
      :text "|这个static mixin结果还是每次都执行。。。"
    {}
      :author "|Hax"
      :text "|根本不 static 嘛。。。"
    {}
      :author "|Hax"
      :text "|[抠鼻]"
    {}
      :author "|引证"
      :text "|唔，它没办法不执行啊，毕竟它不是个工厂"
    {}
      :author "|Hax"
      :text "|所以老老实实用工厂就好了嘛。"
    {}
      :author "|徐飞"
      :text "|或者老老实实用observable[耶]"
    {}
      :author "|Hax"
      :text "|写了20年js，我啥黑魔法没见过。但是我现在悟出一个道理，代码还是朴素的好！"
    {}
      :author "|Hax"
      :text "|因为黑魔法是有代价的。比如容易被误用、难以理解、性能差。"
    {}
      :author "|chenyong"
      :text "|simple made easy [憨笑]"
    {}
      :author "|Hux"
      :text "|People define \"simpleness\" in different senses 😂"
    {}
      :author "|chenyong"
      :text "|直接去 slide 上搬两张过来"
    {}
      :author "|Hux"
      :text "|nice...then simple usually won't make things easy 😂"
    {}
      :author "|Hux"
      :text "|think about \"one universal theory/concept\" - -"
    {}
      :author "|chenyong"
      :text "|Clojure 社区经常提到的话题, 太长了点 https://github.com/matthiasn/talk-transcripts/blob/master/Hickey_Rich/SimpleMadeEasy.md"
    {}
      :author "|徐飞"
      :text "|貌似几年前有一次我讲东西的时候提了一句：就好像“minzhu、fazhi”，大家都这么说的，但是到底哪种才算，都觉得自己那种才对"
    {}
      :author "|chenyong"
      :text "|大致上说是专注数据跟函数这些比面向对象那些魔法有用的"
    {}
      :author "|引证"
      :text "|就我个人而言，贺老的工厂闭包阅读起来更容易，分离出了初始化和渲染函数，对读者更友好 @Hax"
    {}
      :author "|引证"
      :text "|要是未来js里加语法，建议在函数体里加个static关键字，能够进一步简化贺老的写法"
    {}
      :author "|E0"
      :text "|这个要不要跑 init 是 React 决定的吧，加关键字有啥用"
    {}
      :author "|引证"
      :text "|唔，你说的啥？"
    {}
      :author "|E0"
      :text "|你是说怎么简化啊"
    {}
      :author "|引证"
      :text "|我说的是合并它的工厂和返回的函数"
    {}
      :author "|引证"
      :text "|就是从这个形式改成"
    {}
      :author "|引证"
      :text "|[图片: ???.jpg]"
    {}
      :author "|引证"
      :text "|[图片: ???.jpg]"
    {}
      :author "|徐飞"
      :text "|function 里面还要加 static 吗。。。"
    {}
      :author "|徐飞"
      :text "|这 static 什么语义，感觉更难理解了"
    {}
      :author "|引证"
      :text "|唔，静态局部变量啊，C++不是经常这么写么，你看那些锁的定义"
    {}
      :author "|徐飞"
      :text "|[皱眉]"
    {}
      :author "|引证"
      :text "|void xxx(){ static xx = 10; // 多次执行xxx不会重复执行本条语句 }"
    {}
      :author "|E0"
      :text "|但也不是始终不执行啊"
    {}
      :author "|E0"
      :text "|新组件的时候还是要执行啊"
    {}
      :author "|nonamesheep"
      :text "|这里 static 的语义应该和C/C++里 static 不一样吧。C 里面static是（单线程情况下）函数执行第一次初始化，但是React里面应该是新建组件执行，可以多次新建，但是组件更新不执行。"
    {}
      :author "|E0"
      :text "|这就是我说的要不要执行是 React 决定的，不是这个 static 语义能解决的"
    {}
      :author "|引证"
      :text "|[捂脸]我的错"
    {}
      :author "|徐飞"
      :text "|确实，你把语法解释权让给某框架了"
    {}
      :author "|徐飞"
      :text "|好比之前我们有同事写： async componentWillMount"
    {}
      :author "|E0"
      :text "|class 就没问题，你主动 new 了……"
    {}
      :author "|引证"
      :text "|这么一想，react这种 新建不同组件/更新同一个组件都放在一个函数里，邪道啊"
    {}
      :author "|E0"
      :text "|是啊……"
    {}
      :author "|E0"
      :text "|背后他还在管着这个函数到底是在给谁干活呢"
    {}
      :author "|徐飞"
      :text "|所以刚才讨论说贺老的写法，至少让你看得出"
    {}
      :author "|Hax"
      :text "|是的。强行把第一次和更新用同一套代码实现。。。就算是fp也味道不好。除非你是pure+lazy的。但是多范式语言大多不是pure的，就算以fp为主的语言，也有很多不是lazy的。"
    {}
      :author "|小问"
      :text "|好比之前我们有同事写： async componentWillMount"
    {}
      :author "|小问"
      :text "|中枪……"
    {}
      :author "|小问"
      :text "|小项目我就挺喜欢写的"
    {}
      :author "|徐飞"
      :text "|没事，你写归写，只要知道结果是否起作用，是由框架而不是语言决定的就好😃"
    {}
      :author "|Hax"
      :text "|理论上说是可以的。不过当你调试的时候就比较晕了。"
    {}
      :author "|Hax"
      :text "|当然现在框架一般连调试工具都给你准备好了 [擦汗]"
    {}
      :author "|小问"
      :text "|理论上 lifecycle 都应该是void function吧？"
    {}
      :author "|小问"
      :text "|如果确信是 void 的，是不是async并没有太大影响"
    {}
      :author "|徐飞"
      :text "|不知道，说不定有能被阻止或者取消的。。"
    {}
      :author "|E0"
      :text "|特别是 fb 的"
    {}
      :author "|引证"
      :text "|[可怜]我的vue大把的 async created(){}，哈哈哈，就是爽啊"
    {}
      :author "|小问"
      :text "|哈哈，我也是"
    {}
      :author "|E0"
      :text "|这个 async 有啥意义呢……"
    {}
      :author "|引证"
      :text "|里面可以写await"
    {}
      :author "|小问"
      :text "|api是async的，created里面直接做逻辑"
    {}
      :author "|小问"
      :text "|数据初始化之类的"
    {}
      :author "|Hax"
      :text "|作为一个不用react的人，我才知道react上的事件有onXXX就有对应的onXXXCapture。。。我也是醉了"
    {}
      :author "|引证"
      :text "|vue也有啊，类似这样 v-on:click.capture"
    {}
      :author "|引证"
      :text "|串联的写法看上去识别度更高？"
    {}
      :author "|Hax"
      :text "|好吧。我也从来没用过 xxx.capture [流汗]"
    {}
      :author "|E0"
      :text "|话说他们在讨论 Vue 的 JSX 里怎么支持 modifier"

    {}
      :author "|Bot"
      :text "|(播放完成)"
