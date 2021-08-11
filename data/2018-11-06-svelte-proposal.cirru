
{}
  :idx |013
  :title "|关于 Svelte 提案"
  :messages $ []
    {}
      :author |Bot
      :text "|(2018年某一天)"

    {}
      :author "|E0"
      :text "|https://github.com/sveltejs/rfcs/pull/4 你们怎么看这个"
    {}
      :author "|Hax"
      :text "|https://github.com/sveltejs/rfcs/blob/reactive-assignments/text/0001-reactive-assignments.md 好长。。。"
    {}
      :author "|Hax"
      :text "|“The reactivity problem”这段总结得蛮好。"
    {}
      :author "|nonamesheep"
      :text "|(引用前文) When clicking the button, the text inside the button should update to reflect the current value. This can be achieved by scheduling an update after every assignment expression (these are trivial to discover via AST traversal)"
    {}
      :author "|nonamesheep"
      :text "|these are non-trivial"
    {}
      :author "|Hax"
      :text "|https://mobile.twitter.com/Rich_Harris/status/1057290365395451905 其实我跟他看法是接近的。只是我认为部分也最好用和on:click里的表达式语言一样，统一的语言。"
    {}
      :author "|Hax"
      :text "|react选择统一在js，但是用很不js的方式写js；ng选择了基本是js，但是表达式语言是js的子集+他们的扩展；vue选择了js+js子集作为表达式语言……"
    {}
      :author "|Hax"
      :text "|如果是我，我会选择用一个新语言，可以编译到等价的可读的js，你要是愿意，也可以手写这样的js 。 [呲牙]"
    {}
      :author "|Hax"
      :text "|下面有个评论说“suggestion: do the magic, but make it clear it's magic.”"
    {}
      :author "|Hax"
      :text "|我是很赞同的。"
    {}
      :author "|Hax"
      :text "|这点上，react显然是个反面例子。。。"
    {}
      :author "|徐飞"
      :text "|子集+扩展的意思是？"
    {}
      :author "|Hax"
      :text "|ng的表达式是js，但是删掉了 ++/-- 之类的，加上了 pipe 之类的。"
    {}
      :author "|引证"
      :text "|angular的那个叫做微语法"
    {}
      :author "|引证"
      :text "|不是JS"
    {}
      :author "|Hax"
      :text "|确实不是js。但是实际上是和js很像的。"
    {}
      :author "|引证"
      :text "|都选择新语言了，那么@chenyong 可以来推一波clojurescript了~~"
    {}
      :author "|chenyong"
      :text "|主流场景很少会选大多数人不熟悉的语法 [皱眉]"
    {}
      :author "|Hax"
      :text "|我一直在考虑这个边界（通用语言和用于模板的表达式语言）的界线在哪里比较好。react的人选择了不要界线，用单一语言。ng选择了实质上是两种语言，但是两种差异很小。vue选择了一种，但是自动稍微用了一点点黑魔法（用with包起来）。"
    {}
      :author "|Hax"
      :text "|[图片: ???.jpg]"
    {}
      :author "|Hax"
      :text "|这是 rich harris 的代码。@Evan 戏称这是 SvelteScript。实际上如果把let关键字换一下，我们就解决了认知失调的问题：state count = 1; computed double = count * 2"
    {}
      :author "|nonamesheep"
      :text "|(Quote 前文) 这个有点像 displayScript 的语法"
    {}
      :author "|引证"
      :text "|不是换而是加吧，还是需要有个能定义局部变量或常量的东东"
    {}
      :author "|引证"
      :text "|不作为状态"
    {}
      :author "|Hax"
      :text "|当然它是加。我说换，指的是关键字所表达的语义。"
    {}
      :author "|引证"
      :text "|[表情]"
    {}
      :author "|Hax"
      :text "|它可以实际被编译为毫无魔法的js：const state1 = Reactive({count: 1}); const computed1 = Reactive(() => state1.count * 2) 。。。"
    {}
      :author "|徐飞"
      :text "|这不就是vue么"
    {}
      :author "|徐飞"
      :text "|ng其实也类似"
    {}
      :author "|引证"
      :text "|ng没有computed的概念吧"
    {}
      :author "|Hax"
      :text "|本质其实都差不多。我比较关心的问题还是呈现的surface syntax和概念模型是怎样的。。。"
    {}
      :author "|徐飞"
      :text "|你可以自己写getter"
    {}
      :author "|Hax"
      :text "|我现在越来越觉得，也许创建一个类似js的单一语言，然后又提供一个没有魔法的js版本。是最能满足所有人的。"
    {}
      :author "|引证"
      :text "|哈哈，不要搞DSL了，专门搞个为前端做的语言吧"
    {}
      :author "|sofish"
      :text "|做个语言还要先做个浏览器"
    {}
      :author "|引证"
      :text "|@徐飞 getter和computed其实有差异的，computed是带cache的"
    {}
      :author "|徐飞"
      :text "|不然为什么有dart"
    {}
      :author "|Hax"
      :text "|编译嘛。"
    {}
      :author "|Hax"
      :text "|@引证 cache这个是细节，不是很重要。"
    {}
      :author "|E0"
      :text "|ComponentScript"
    {}
      :author "|引证"
      :text "|不是啊，cache表示它记清楚了所有的依赖树"
    {}
      :author "|Hax"
      :text "|@徐飞 dart的问题是给的东西太多了，跟js的模型差得太远。"
    {}
      :author "|引证"
      :text "|getter没有个runtime记住这个"
    {}
      :author "|E0"
      :text "|主要是大家发现共享 scope 可以少写好多代码……"
    {}
      :author "|Hax"
      :text "|@引证 这无所谓，其实只要setter能触发更新就完了。"
    {}
      :author "|徐飞"
      :text "|[图片: ???.jpg]"
    {}
      :author "|徐飞"
      :text "|有些类似这个意思。。。"
    {}
      :author "|chenyong"
      :text "|或者 go 那样……"
    {}
      :author "|徐飞"
      :text "|（其实当时我是觉得js可能满足不了前端框架的需求"
    {}
      :author "|chenyong"
      :text "|https://hackernoon.com/writing-a-frontend-web-framework-with-webassembly-and-go-ff84cd1346fe"
    {}
      :author "|Hax"
      :text "|确实有点类似。只是js还是应该变，作为compile target，我们需要js能有更完善的能力。只是它变的方向，（对我们来说）不需要是class-field、pipe operator之类的非本质性（sugar）的东西，而是需要是bigint、weakref、struct之类本质性的东西。"
    {}
      :author "|徐飞"
      :text "|我特别理解为什么题叶天天盯着wasm"
    {}
      :author "|徐飞"
      :text "|因为他不想要js作为编译目标"
    {}
      :author "|Hax"
      :text "|wasm也是个方向，但是wasm和js一样，还缺好多东西。"
    {}
      :author "|徐飞"
      :text "|[表情]"
    {}
      :author "|chenyong"
      :text "|从 coffeescript 开始大家尝试各种方案，总归不如把 js 干掉找个更好的编译目标"
    {}
      :author "|小问"
      :text "|实际上我反对wasm控制dom……"
    {}
      :author "|小问"
      :text "|逻辑、算法、数据处理wasm我是很支持的"
    {}
      :author "|nonamesheep"
      :text "|wasm 应该救不了 JS"
    {}
      :author "|Hax"
      :text "|控制不控制dom不重要，反正现在都是virtual dom，你只要在wasm算好了vdom然后扔给js部分让js去update dom……本来update dom的性能瓶颈也不在js上。"
    {}
      :author "|chenyong"
      :text "|好像没有太多区别？价格中间层用 js 去控制，不也是控制吗"
    {}
      :author "|nonamesheep"
      :text "|因为市面上针对GUI的语言……最好的也就是 JavaScript 了吧"
    {}
      :author "|Hax"
      :text "|不能说最好的。只能说一统天下的。。。"
    {}
      :author "|chenyong"
      :text "|为什么不是 DOM API 的功劳 "
    {}
      :author "|Hax"
      :text "|所以我认为理想的ui语言，还是要compile到js而不是wasm。因为总有很多人只想写js，不想用其他语言。"
    {}
      :author "|Hax"
      :text "|如果你直接编译到wasm，就等于放弃了这些人。"
    {}
      :author "|chenyong"
      :text "|可以写 js 然后编译到 wasm 吗"
    {}
      :author "|小问"
      :text "|ts可以"
    {}
      :author "|Hax"
      :text "|“可以写 js 然后编译到 wasm 吗” 理论上可以，但是代价太大。"
    {}
      :author "|Hax"
      :text "|至少目前还太大。"
    {}
      :author "|nonamesheep"
      :text "|主流的语言里只有 kotlin 还能和 JS 比了吧…"
    {}
      :author "|小问"
      :text "|ts现在就可以编译wasm"
    {}
      :author "|yubo"
      :text "|webpack 不也在做这个事情？"
    {}
      :author "|Hax"
      :text "|没有wasm native gc 支持，成本太高。"
    {}
      :author "|yubo"
      :text "|[图片: ???.jpg]"
    {}
      :author "|yubo"
      :text "|这个小哥不就搞这个事情"
    {}
      :author "|Hax"
      :text "|而且，就算js/ts可以编译到wasm，这跟我前面说的不矛盾，用户也不关心（如果直接运行js和运行从js编译到的wasm并没有啥差异的话）"
    {}
      :author "|Hax"
      :text "|webpack只是包一下而已。"
    {}
      :author "|小问"
      :text "|我看了一眼那个项目，狗屁东西……"
    {}
      :author "|Hax"
      :text "|@a nonamesheep kotlin不行吧，先把android吃完再说。。。而且kotlin太像java，离js还是太远。"
    {}
      :author "|小问"
      :text "|所以到了wasm，我也反对wasm控制dom"
    {}
      :author "|Hax"
      :text "|http://displayscript.org/ 好像不错。"
    {}
      :author "|徐飞"
      :text "|语言跟框架是互相成就的"
    {}
      :author "|Hax"
      :text "|或者，需要一个平台采纳。比如swift之于ios，kotlin之于android，dart之于flutter。。。"
    {}
      :author "|Hax"
      :text "|我们还是回到svelte的那份提案。。。。（又把天给聊死了）"
    {}
      :author "|yubo"
      :text "|[偷笑]哈哈"
    {}
      :author "|Hax"
      :text "|@a nonamesheep “these are trivial to discover via AST traversal” 你为啥觉得是 non-trivial 的？"
    {}
      :author "|nonamesheep"
      :text "|因为有mutating method"
    {}
      :author "|Hax"
      :text "|例子？"
    {}
      :author "|Hax"
      :text "|没感觉这个有啥特别困难（对于编译器来说）"
    {}
      :author "|nonamesheep"
      :text "|比如script部分import个Person"
    {}
      :author "|nonamesheep"
      :text "|Person有个setAge方法"
    {}
      :author "|Hax"
      :text "|嗯。你是说跨模块问题。"
    {}
      :author "|Hax"
      :text "|要不要跨模块编译。"
    {}
      :author "|Hax"
      :text "|黑魔法可能跟着模块蔓延。。。"
    {}
      :author "|nonamesheep"
      :text "|而且js有 外部库"
    {}
      :author "|Hax"
      :text "|我理解它是限定只有在组件的script部分有效。所以把外部库的问题排除了。"
    {}
      :author "|Hax"
      :text "|只有script里声明的变量才是被编译的。所以外部的Person是没有reactive效果的。"
    {}
      :author "|nonamesheep"
      :text "|那组件里的array.push怎么办"
    {}
      :author "|Hax"
      :text "|? 给个例子？"
    {}
      :author "|nonamesheep"
      :text "|就是组件里的script执行一句arr.push(item) 类似的语句"
    {}
      :author "|nonamesheep"
      :text "|那里也应该插入update"
    {}
      :author "|徐飞"
      :text "|…"
    {}
      :author "|Hax"
      :text "|“Calling array methods would not trigger updates on those arrays.” 目前似乎该提案选择了不管。"
    {}
      :author "|E0"
      :text "|arr[arr.length] = item"
    {}
      :author "|E0"
      :text "|?"
    {}
      :author "|Hax"
      :text "|ng似乎也是不管的吧。"
    {}
      :author "|Hax"
      :text "|你得强制用个 impure pipe"
    {}
      :author "|徐飞"
      :text "|他反正对比，当然不管"
    {}
      :author "|Trotyl"
      :text "|ng 是纯 diff，什么变化都管。。😳"
    {}
      :author "|Hax"
      :text "|@Trotyl 如果只是调用pure pipe，你改数组的话，ng也不会更新。"
    {}
      :author "|徐飞"
      :text "|感觉不会这样"
    {}
      :author "|Trotyl"
      :text "|看场景，如果是 NgFor 那永远更新，如果是作为 Input 看目标指令里面怎么用。。😳"
    {}
      :author "|Hax"
      :text "|我昨天才看的ng的文档。。。应该没有理解错。[愉快]"
    {}
      :author "|徐飞"
      :text "|（不一定"
    {}
      :author "|Hax"
      :text "|[抠鼻]"
    {}
      :author "|徐飞"
      :text "|[表情]"
    {}
      :author "|Hax"
      :text "|反正。。。我觉得这个不是很重要，有n种方式。。。比如如果是TS，你知道这里是调用了 push（或任何 mutate 方法），或者 array[i] = ... 那你就插 update 呗。"
    {}
      :author "|Trotyl"
      :text "|如果你是说作为 Pipe 的 Target 确实不会重新触发 Pipe。。[皱眉]"
    {}
      :author "|Hax"
      :text "|@Trotyl 我应该就是这个意思 [调皮]"
    {}
      :author "|Trotyl"
      :text "|但是原则上数据处理不应该放 Pipe 里做，Angular 已经没有 AngularJS 的 filter、sortBy 那些 Pipe 了。。[皱眉]"
    {}
      :author "|徐飞"
      :text "|这种是不会动。。"
    {}
      :author "|Hax"
      :text "|@Trotyl 那也是一个解决方案：“我们的原则是……不要这么干……”"
    {}
      :author "|Hax"
      :text "|@a nonamesheep 所以我们还有什么non-trivial问题没解决？[呲牙]"
    {}
      :author "|nonamesheep"
      :text "|嘛，如果要强制在组件里用赋值更新的话，那确实是很好做的"
    {}
      :author "|nonamesheep"
      :text "|但是支持面太小，不见得方便或讨人喜欢。可以说 = 无非就是变个花样的setState"
    {}
      :author "|Hax"
      :text "|是啊。所以我说我个人会prefer 改语法为 state x = ... 或者老实的写 const x = new State() 然后 x.set(...)"
    {}
      :author "|Hax"
      :text "|其实这个提案，跟我前两天讲的 react hooks 的 alternative 形式是很类似的。区别就是它用了单文件组件的形式，再加上一点编译，所以可以弄到看上去更简洁一点。"
    {}
      :author "|Hax"
      :text "|svelte这个提案有一个小问题是：import 的部分实际上是所有组件实例共享的。而 let xxx 则本质上是每实例上的变量。"
    {}
      :author "|Hax"
      :text "|我不禁想到，在svelte里怎么保持一个跨实例共享的变量呢？"
    {}
      :author "|Hax"
      :text "|哦！它搞了一个... 可以的。[白眼]"
    {}
      :author "|Hax"
      :text "|最差的情况，就算这个proposal就这样land了，也是让大家能提前知道class field的坑。"
    {}
      :author "|winter"
      :text "|@Hax 讲真我觉得有private本来就是坑"
    {}
      :author "|winter"
      :text "|而且没有基于现在的symbol来做"
    {}
      :author "|Hax"
      :text "|private只是一方面。其实从语义上说，就算没有基于symbol，现在提案里的private并没有“非常坑”。坑的部分主要是public field。还有就是他们之间的互相关联。整体上这个提案太庞大，影响面太广，每个部分也不能说很挫，但是都有点毛病，合起来一看就很难受了。"
    {}
      :author "|Hax"
      :text "|比方说 static private field + static public method（现在已有的）。 class A {static #x = 1; static get x() {return this.#x} } 这个代码吧，好像也是没毛病的。但是你来一个 class B extends A {} 然后 B.x 就炸了。"
    {}
      :author "|Hax"
      :text "|整个class field和相关proposal就到处隐藏这种小坑。但看一个，好像也不是很坑。但是合起来就够呛了。"
    {}
      :author "|徐飞"
      :text "|失误"
    {}
      :author "|Evan"
      :text "|我觉得 svelte 这个方向潜在的坑还挺多的，虽然简化了 assignment，但很多其他操作比如数组却需要手动 notify。另外 import 进 svelte 的纯 js 文件又如何处理... 最后还是要两种思维模式，心智负担并没减轻多少"
    {}
      :author "|Evan"
      :text "|Rich 自己也承认这属于 abuse js 已有的 syntax。我也觉得他还不如自己搞些特殊关键词，反正他自己也有 js 编译器（buble）"
    {}
      :author "|Evan"
      :text "|另外就是以 svelte 本来就已经小众的定位来说，推这样的黑魔法只会让自己更小众..."
    {}
      :author "|Hax"
      :text "|是。赞同。虽然abuse syntax我觉得比react hooks要稍微好那么一丁点儿……我也很赞同，已经小众了，就别怕上新语法嘛。反正 state x = ... 然后 next x = x + 1 或者 new x = x + 1 就很好啊，概念模型非常的清晰。"
    {}
      :author "|Hax"
      :text "|数组的话，也不用手动notify，直接 state x = [...] 这个数组就劫持一下所有的push/pop之类的方法和 x[i] = ..."
    {}
      :author "|Hax"
      :text "|——反正你有编译器！如果 state x = externalMethod() 返回一个普通数组，编译器直接不允许，要求你必须弄成 state x = StateArray.from(exteranlMethod()) 或者 state x = [...extenalMethod()] ……"
    {}
      :author "|winter"
      :text "|比方说 ……你来一个 class B extends A {} 然后 B.x 就炸了。 —— protected和friend 了解一下"
    {}
      :author "|Hax"
      :text "|@winter 现在不就是没有 protected/friend 嘛。话说如果symbol-based，倒也不用protected/friend了。"
    {}
      :author "|winter"
      :text "|所以我说 拔出萝卜带出泥"
    {}
      :author "|winter"
      :text "|C++也不是蛋疼才搞出来那么复杂的一堆东西的"
    {}
      :author "|winter"
      :text "|这个思路的 private 就是有问题"
    {}
      :author "|Hax"
      :text "|@winter 我是赞同的。。。我理想中的proposal是先上symbol.private。然后基于symbol.private语义，语法用classes1.1的思路。"
    {}
      :author "|Hax"
      :text "|基本上可以解决现在的所有主要问题。"
    {}
      :author "|winter"
      :text "|我觉得这么走是死路 迟早变C++"
    {}
      :author "|winter"
      :text "|我觉得应该允许proxy监听"
    {}
      :author "|winter"
      :text "|这是蛋疼"
    {}
      :author "|winter"
      :text "|非要完全私有"
    {}
      :author "|winter"
      :text "|私有是阻止别人无意中犯错 不应该阻止别人有意犯错"
    {}
      :author "|winter"
      :text "|后者不可能实现"
    {}
      :author "|Hax"
      :text "|hard private 不是阻止犯错，而是不想给任何机会让你access……"
    {}
      :author "|Hax"
      :text "|我得说，99%的开发者是没这个需求的。。。不过我也不好否认，有那么1%的 use cases 吧。"
    {}
      :author "|winter"
      :text "|不让access就是想阻止犯错啊"
    {}
      :author "|winter"
      :text "|不然呢"
    {}
      :author "|winter"
      :text "|难道还有别的用？ 毕竟大家代码都一个内存里运行……"
    {}
      :author "|Hax"
      :text "|虽然在一个内存里运行，但是正常来讲，如果我扔一个对象给你，这个对象内部保存了一个key，我就是不想让你访问到。你一定要说的话，还是有这种需求滴。"
    {}
      :author "|Hax"
      :text "|在传统的，比如java里，private是可以通过反射得到，但是我们可以通过securityManager来阻止反射。所以一定要说的话，这种需求也许还是有的。"
    {}
      :author "|Hax"
      :text "|但无论如何，我确实认为，symbol.private是可以解决这个需求的。而且同时满足了需要反射的（用 Symbol() 产生），和想禁止反射（用Symbol.private() 产生）的 use cases。"
    {}
      :author "|Hax"
      :text "|@Evan 话说，svelte的这个方案，真正abuse syntax的，其实只有 export 和 import 的用法。因为如果我们把<script>部分看成是构造器或工厂里的代码，那么export import 是不能出现在这里的（必须在顶层）。"
    {}
      :author "|Hax"
      :text "|其中呢，import其实也还马马虎虎，毕竟import的语义本来就是只执行一次，所以问题不算很大。最abuse的只有export（用来表示property）。其实比较好的替代方案是把 export let x = ... 换成 @prop let x = ... 也就是用decorator语法。"
    {}
      :author "|E0"
      :text "|他这个魔改的语法感觉收益很小啊"
    {}
      :author "|E0"
      :text "|问题倒是一大堆……"

    {}
      :author "|Bot"
      :text "|(播放完成)"
