
{}
  :idx |011
  :title "|React Hooks 犹疑"
  :messages $ []

    {}
      :author "|Hax"
      :text "|[图片]"
    {}
      :author "|Hax"
      :text "|看了这个，有种感觉，我终于愿意写一点react了。。。"
    {}
      :author "|Hax"
      :text "|不过没有大规模实践之前，不知道是否这种方式能完全取代现有方式。"
    {}
      :author "|E0"
      :text "|其实我感觉完全换了一种写法……"
    {}
      :author "|徐飞"
      :text "|这个就不怕造成分裂么"
    {}
      :author "|徐飞"
      :text "|我感觉已经接近ng1到ng2的变化了"
    {}
      :author "|天翔Skyline"
      :text "|一点都不pure了……这还是react么"
    {}
      :author "|天翔Skyline"
      :text "|[皱眉]"
    {}
      :author "|Hax"
      :text "|实话说，我觉得这个才符合react的fp精髓啊……"
    {}
      :author "|Hax"
      :text "|现在的react class-based component 写法我实在是下不了手。。。忒丑。我宁愿选择ng [奸笑]"
    {}
      :author "|徐飞"
      :text "|同上"
    {}
      :author "|引证"
      :text "|[发呆]这还是react么"
    {}
      :author "|引证"
      :text "|写出来的样子差别好大"
    {}
      :author "|chenyong"
      :text "|不知道怎么实现的，看不明白状态现在存到哪里去了"
    {}
      :author "|Hax"
      :text "|其实本来按照 jsx 的设计推导，pure component是很ok的，啥生命周期、render统统不需要，一个function解决战斗。毛病出在state上，为了搞state，所以弄了现在的 class-based component，但是 class 的模式和 react 的 fp 本质是背道而驰的，所以写起来会别扭（至少我感觉是这样滴）"
    {}
      :author "|Hax"
      :text "|@chenyong 你按照这个 surface api 自己实现一下看看。[奸笑]"
    {}
      :author "|chenyong"
      :text "|想不出来怎么实现  单纯就一个函数，怎么监听数据变化然后精准触发单个组件更新"
    {}
      :author "|Hax"
      :text "|const [x, setX] = useState() 返回的是一组hook，然后插在jsx里。"
    {}
      :author "|Hax"
      :text "|相当于它允许你创建一堆细粒度的 pub/sub 。"
    {}
      :author "|引证"
      :text "|实现起来还是蛮容易的"
    {}
      :author "|引证"
      :text "|useState()每次都创建一个新的pair"
    {}
      :author "|引证"
      :text "|不过我感觉之后的状态管理是个问题啊，还是需要被统一接管"
    {}
      :author "|chenyong"
      :text "|想不明白 "
    {}
      :author "|引证"
      :text "|它还是vdom的diff，并不是变成了反应式啊，你关心它存哪里干什么"
    {}
      :author "|chenyong"
      :text "|dom diff 探测的时候用不可变数据的话，需要保持相同的引用，要么在全局存了，要么在组件引用上存了，要么其他方案，总要有个地方存着"
    {}
      :author "|chenyong"
      :text "|这个语法给人的感觉是每次 virtual dom 渲染都会创建新的"
    {}
      :author "|吴名扬"
      :text "|@chenyong 可以想象成useState在创建出的vdom上挂了一个state"
    {}
      :author "|chenyong"
      :text "|不知道要怎么实现.."
    {}
      :author "|吴名扬"
      :text "|然后下次渲染的时候，如果vdom有state，那么useState直接返回那个state"
    {}
      :author "|晋晓炜"
      :text "|[机智] 机智"
    {}
      :author "|祈夜"
      :text "|但是是怎么对应到上次的pair的呢"
    {}
      :author "|吴名扬"
      :text "|Vdom的数据结构里存着，diff的时候拿出来就可以了"
    {}
      :author "|吴名扬"
      :text "|有点algebraic effect的味道…"
    {}
      :author "|E0"
      :text "|https://github.com/reactjs/rfcs/pull/68#issuecomment-433158179"
    {}
      :author "|吴名扬"
      :text "|嗯…React的语义越来越需要专门学习了…"
    {}
      :author "|E0"
      :text "|虽然我不懂 algebraic effect 是啥……"
    {}
      :author "|chenyong"
      :text "|能把 class 干掉总归是好事"
    {}
      :author "|徐飞"
      :text "|[奸笑]离class远，甚至干掉，是打算给ng让路了吧"
    {}
      :author "|E0"
      :text "|[图片]"
    {}
      :author "|吴名扬"
      :text "|~~嗯…这句话应该是避免戈尔巴乔夫式的错误…~~"
    {}
      :author "|徐飞"
      :text "|皇上您为何反"
    {}
      :author "|晋晓炜"
      :text "|明年再 plan 不迟"
    {}
      :author "|Hax"
      :text "|https://zhuanlan.zhihu.com/p/47737355"
    {}
      :author "|Hux"
      :text "|你们快给我去答题哈哈哈"
    {}
      :author "|Hux"
      :text "|[应用消息: 知乎]"
    {}
      :author "|Hux"
      :text "|我问了之后都没啥靠谱的回答[捂脸]"
    {}
      :author "|Hax"
      :text "|现在的回答不是挺好的么"
    {}
      :author "|Hux"
      :text "|我并没有觉得 cyan 那个答得有啥意思（"
    {}
      :author "|Hux"
      :text "|他那个太官方文档了"
    {}
      :author "|Hux"
      :text "|我觉得主观感受和影响要更有意思一些（"
    {}
      :author "|吴名扬"
      :text "|我回去吹一波("
    {}
      :author "|  Hux"
      :text "|而且明显……那三个 motivation 是支撑不住这次 API 改变的"
    {}
      :author "|Hux"
      :text "|@chenyong vdom 的 diff 没变呀，这就是换个方式给你提供 state 而已"
    {}
      :author "|chenyong"
      :text "|嗯嗯"
    {}
      :author "|Hux"
      :text "|@a nonamesheep 你是"
    {}
      :author "|Hux"
      :text "|觉得 useState 也有 algebraic effect 的味道？怎么说"
    {}
      :author "|徐飞"
      :text "|他是xx知乎"
    {}
      :author "|chenyong"
      :text "|- -! 线索有点奇怪, Dan 突然混进 Clojure 的讨论来了."
    {}
      :author "|引证"
      :text "|你还在纠结state存在哪啊"
    {}
      :author "|chenyong"
      :text "|[皱眉]"
    {}
      :author "|chenyong"
      :text "|[应用消息: 微博]"
    {}
      :author "|chenyong"
      :text "|不纠结了"
    {}
      :author "|引证"
      :text "|@chenyong 我刚才看了一下实现，和我猜想的差不多，放在owner component内置的一个链表里的"
    {}
      :author "|引证"
      :text "|第一次执行useState和接下来执行的逻辑并不一样"
    {}
      :author "|引证"
      :text "|[图片]"
    {}
      :author "|chenyong"
      :text "|只看了大概，存在组件上啰，我刚开始还想会不会是全局"
    {}
      :author "|引证"
      :text "|我刚才看了一下，确定是存在组件上的"
    {}
      :author "|引证"
      :text "|而且多个useState，就是在这个链表里增加next"
    {}
      :author "|chenyong"
      :text "|我还以为会用个数组存一个栈，貌似没有？"
    {}
      :author "|引证"
      :text "|没有数组，每次use函数执行的时候都会取workInProgressHook.next"
    {}
      :author "|徐飞"
      :text "|有链表还要栈干什么呢"
    {}
      :author "|chenyong"
      :text "|@引证 你说的是 vue 那个代码里吗"
    {}
      :author "|chenyong"
      :text "|不大一样？"
    {}
      :author "|引证"
      :text "|啥？我这个截图是react的啊"
    {}
      :author "|chenyong"
      :text "|嗷"
    {}
      :author "|chenyong"
      :text "|那差不多了，react 的代码没看"

    {}
      :author "|Bot"
      :text "|(播放完成)"
