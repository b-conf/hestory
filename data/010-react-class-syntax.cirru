
{}
  :id |010-react-class-syntax
  :title "|章节 10 - React 和 class 语法"
  :messages $ []

    {}
      :author "|Hax"
      :text "|@Evan https://github.com/tc39/proposal-class-fields/issues/151#issuecomment-431597270 这里littledan总结了framework作者的意见。其实我理解为什么framework作者prefer define语义。"
    {}
      :author "|Hax"
      :text "|问题在于现在的语法实在太迷惑人了，framework的用户其实并不能理解其中有差异。比如说，react的文档其实只在声明一个handler的地方用 public field ，但 state 的初始化仍然是写在 constructor 里的（https://reactjs.org/docs/react-without-es6.html#autobinding ）。我估计这说明react文档作者明白state其实不应该redefine。"
    {}
      :author "|Hax"
      :text "|但是实际上react的用户却经常用public field来初始化state。比如随便搜了一个：https://github.com/michal-karbasz/explorea-event-manager/blob/b35a30a3b2dc84779131fa911c92570d5b430351/js/components/event.jsx 我猜想 vue 的用户也恐怕很难搞清楚这里面的区别。所以即使你觉得应该用define语义，我觉得也许你应该推动他们至少改一下语法。 "
    {}
      :author "|E0"
      :text "|好长……是说 public field 要不要调用 setter？ "
    {}
      :author "|Hax"
      :text "|是的。 "
    {}
      :author "|E0"
      :text "|好像调不调都挺有道理的 [捂脸] "
    {}
      :author "|E0"
      :text "|但是define的话你可以在constructor里面set呀 "
    {}
      :author "|E0"
      :text "|set 了你就没得 define 了 "
    {}
      :author "|Hax"
      :text "|我不是 argue define 不好，而是现在的语法+define语义导致footgun。简单说，你有两种选择解决这个问题。一种是换用set，一种是换语法。 "
    {}
      :author "|Hax"
      :text "|有人支持用set。你反对是没有问题的。但是你应该支持换语法。。。 "
    {}
      :author "|Hax"
      :text "|换语法的方式包括：加关键字（比如 public、declare、own 之类的）、换符号（= 换成 := ）、加decorator。 "
    {}
      :author "|Hax"
      :text "|我argue的点在于，换语义和换语法你必须要支持一个。否则footgun是无法解决的。。。而现在这个proposal的champion啥都不想改，就想这样发出去。 "
    {}
      :author "|Hax"
      :text "|而且chrome canary其实已经land了这个feature。真是。。。。无话可说。 "
    {}
      :author "|Hax"
      :text "|感觉他们就是想一意孤行。 "
    {}
      :author "|引证"
      :text "|“啥都不想改，就想这样发出去”？现在发对声挺大的，他们真的是一点都不照顾么？ "
    {}
      :author "|Hax"
      :text "|干嘛要照顾？你们又没有话语权。连个TC39代表也没有。。。 "
    {}
      :author "|Hax"
      :text "|唉。。。 "
    {}
      :author "|yubo"
      :text "|请道格拉思帮你说话 "
    {}
      :author "|E0"
      :text "|不过话说这个地方最早是为什么会用 = 的呢…… "
    {}
      :author "|Hax"
      :text "|那就不知道该问谁了。 "
    {}
      :author "|Hax"
      :text "|说起来，如果是 [[set]] 的话，难道不应该用 = 么？ "
    {}
      :author "|Evan"
      :text "|其实我对换不换语法倒是无所谓，因为我觉得那不能算 footgun，JS 开发者这么多稀奇古怪的坑都趟过来了，class declaration 跟 assignment 的区别还能分不清么，更何况在我看来这个区别是挺合理的 "
    {}
      :author "|Evan"
      :text "|MobX 的作者反对主要是因为他有一个设计上一开始就依赖 set 行为的 API "
    {}
      :author "|Evan"
      :text "|他是不希望自己需要去处理这个 breaking change "
    {}
      :author "|Evan"
      :text "|其他框架作者大多支持 define，是因为 define 在 class 用于框架 API 时是更符合语义的行为 "
    {}
      :author "|Evan"
      :text "|Polymer 支持 set 也是因为他们设计了依赖改行为的 API "
    {}
      :author "|Evan"
      :text "|说白了支持 set 的都是利益相关 "
    {}
      :author "|Evan"
      :text "|某种程度上可以说是被 babel/ts 坑了，然后现在不想回头了 "
    {}
      :author "|Hax"
      :text "|@Evan 我觉得你真的不能指望大多数人分清 declaration 和 assignment —— 如果语法是如此相似的话。我觉得我自己写多了也会手抖写错的。这个 footgun 之所以神奇，就在于，扣扳机之后未必马上死，实际上99%不会死。但是最终死还是不死，取决于他人的行为。 "
    {}
      :author "|Hax"
      :text "|还写了一篇，https://zhuanlan.zhihu.com/p/47310567 ，大家看看？ "
    {}
      :author "|大漠_w3cplus.com"
      :text "|[强][强][强][强][强]"
    {}
      :author "|Evan"
      :text "|我的看法是不能因为可能有人分不清就选择一个不正确的语义。在我看来 set 语义就是错误的 "
    {}
      :author "|Evan"
      :text "|改语法我可以接受，set 语义我不能接受 "
    {}
      :author "|Hax"
      :text "|道理上是这样的。实践上么。。。当然我还是要说，我的 key point 在于：语义和语法要匹配。现在的问题是这语法指向了另外一种语义。 "
    {}
      :author "|Hax"
      :text "|顺便说，react 中很多人就写 class { state = ... } 。state按照react的用法，其实是只读的。所以道理上，当有 private 之后，它可以做成用 private，然后只暴露 getter。这样就避免了 this.state = ...的误用。然而因为public field的这个语法，导致很多人直接写 class { state = ... } "
    {}
      :author "|Hax"
      :text "|（包括ljharb认为就该这样写，因为这样就不用写constructor，不会碰到super的坑——我也不知道为啥他坚持认为要求在this访问之前调用super就是坑），于是就footgun。于是react为了避免footgun射死用户，就只好永远不用 getter 包装的方式，只好永远只能口头警告你们不要写 this.state = ... 写了出毛病你们活该。。。 "
    {}
      :author "|Hax"
      :text "|@Evan 所以你觉得 class { state = ... } 到底是错误的写法呢？还是正确的。。。 "
    {}
      :author "|Evan"
      :text "|正确的，语义上等同于 getInitialState() "
    {}
      :author "|Evan"
      :text "|React 可以在创建 instance 之后重新 define state "
    {}
      :author "|Evan"
      :text "|这时候已经可以拿到 state 的 initial value 了 "
    {}
      :author "|Evan"
      :text "|重定义为 getter setter 即可 "
    {}
      :author "|Hax"
      :text "|你说的这个方式明明是trick啊。base class里随便怎么搞一下state，然后subclass里redefine一下。然后base class在某个时刻再次redefine一下。。。 "
    {}
      :author "|Hax"
      :text "|我很怀疑react会怎么干，毕竟defineProperty也不是什么高性能操作。。。 "
    {}
      :author "|Hax"
      :text "|而且 redefine property 我很怀疑会引发 deopt。 "
    {}
      :author "|Hax"
      :text "|当然了，我觉得你说的这个方法确实不错。不愧是JS啊！怎么折腾都行 [捂脸]"
    {}
      :author "|Hax"
      :text "|@Evan 哈，ljharb在set/define问题上倒戈了。。。话说，我觉得你还是暂时不要趟这个浑水了。。。其实虽然我认为set比define在footgun上要少，（深层原因是从OO角度讲，own property本来就是个坑，field声明只是把这个坑完全暴露出来。只有基于prototype才能符合OO，这是为什么当初ES6就只干了prototype的部分，因为剩下的东西不可能达成一致意见。）"
    {}
      :author "|Hax"
      :text "|但是我也不觉得用set语义就是好提案。首先set就成了纯粹的语法糖（如果不考虑decorator）。如果是语法糖的话，干嘛一定要进标准呢？其实要public field的核心原因是为了用decorator。然而用set之后，decorator就变奇怪了，就算能用，语义也会进一步复杂，说不定就会有什么edge cases跳出来。 "
    {}
      :author "|Hax"
      :text "|反正vue现在也不依赖 field 和 decorator，你还是先让他们先吵一通再说吧。 "
    {}
      :author "|nonamesheep"
      :text "|（求倒戈现场围观 "
    {}
      :author "|Hax"
      :text "|倒戈现场 https://github.com/tc39/proposal-class-fields/issues/151#issuecomment-431937427 "
    {}
      :author "|Hax"
      :text "|@Evan 所以实话说，我虽然认为set问题少点，但是实际上我的意思是，set/define都他们挫得一逼，整个public field就是个浑身毛茸茸（fuzzy）的提案，而 private field 为什么长 #priv 那个挫样子，是因为它要和 public field 的语法保持对称，如果不是这个目的，完全可以用 classes 1.1的语法。"
    {}
      :author "|Hax"
      :text "|如果不care语法我们还可以选symbol.private提案（而且该提案还提供了protected/friend的可能，而现在的提案就完全没有留下余地）。所以整个 field 提案就是连环因素下搞出来的妥协方案，本来毫不相干的concern因为语法二元性被关联起来，整个design taste非常差，遭到反对简直是一定的。 "
    {}
      :author "|Hax"
      :text "|当然，你说 field 提案一定不能用吗？也不是不能用。按照滑坡谬论（破罐破摔理论），js本来就挫，再挫一点好像也不会怎样。。。。"
    {}
      :author "|Hax"
      :text "|只不过我认为这次这个挫得有点猛。因为这是一大坨东西（包括public/privtate field、static public/rpivate field、private methods、static private methods...），而不像某些提案只影响局部。"
    {}
      :author "|Hax"
      :text "|而且我们已经有很多种private的用法（比如TS、基于symbol、基于_约定、基于closure……），一个不够好的提案就是无法中止分歧，只是从10种做法变成了11种（即使它是“标准”），对整个生态并无好处"

    {}
      :author "|Bot"
      :text "|(播放完成)"
