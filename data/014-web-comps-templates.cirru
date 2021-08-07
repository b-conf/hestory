
{}
  :idx |014
  :title "|Web Components 展开"
  :messages $ []
    {}
      :author |Bot
      :text "|(2018年某一天)"

    {}
      :author "|Hax"
      :text "|其实我一直想说vue选择完全替换也许不是最佳的方式，我个人会prefer更靠近webcomponents的方式，就是结果的dom树是：A ，感觉上更容易理解。"
    {}
      :author "|E0"
      :text "|套这么多层接受不了……"
    {}
      :author "|Hax"
      :text "|@E0 这。。。也就是保留了组件嵌套信息而已……本来开发的时候你也是需要这个信息的啊"
    {}
      :author "|Maxwell"
      :text "|有些div是被迫套的，为了保持template有唯一的root……"
    {}
      :author "|E0"
      :text "|而且这也不是 Vue 选的吧，应该都是这样的"
    {}
      :author "|天翔Skyline"
      :text "|「 Hax: @E0 这。。。也就是保留了组件嵌套信息而已……本来开发的时候你也是需要这个信息的啊 」 - - - - - - - - - - - - - - - 开发依赖的应该是component tree的嵌套信息而不是dom嵌套吧？"
    {}
      :author "|Hax"
      :text "|强迫有唯一root正是完全替换才需要的。"
    {}
      :author "|Hax"
      :text "|@天翔Skyline 你从webcomponents的角度看，compoent tree 就是 dom tree 嘛。"
    {}
      :author "|天翔Skyline"
      :text "|可是web component还有个shadow dom来隐藏真实dom结构啊[皱眉] 直接暴露出来感觉有点接受无能……"
    {}
      :author "|Hax"
      :text "|shadow dom 和 custom element 是正交的。你完全可以不用 shadow dom，把节点直接插在 custom element 下面。当然我们最好是用shadow dom，因为提供了封装，还有css的阻断。"
    {}
      :author "|Hax"
      :text "|还有，你考虑一下 `<builtin is=x>` 的情况，就会发现，实际上替换掉的方式在这里是不work的。。。"
    {}
      :author "|E0"
      :text "|而且 extend 一个组件以后多包了一层，会感觉很奇怪吧"
    {}
      :author "|E0"
      :text "|组合你已经可以通过 slot 来做了"
    {}
      :author "|Hax"
      :text "|extend是针对父组件extend啊。为啥是“多”包一层。。。template本来提供的就是内部实现。"
    {}
      :author "|Hax"
      :text "|“直接暴露出来”，这个是看怎么算直接暴露出来。按照想象中的声明式shadowdom的写法，你未来可以直接这样写html：<my-xxx><shadowroot><div>...</div></shadowroot></my-xxx>。这样还是“直接暴露出来”么？"
    {}
      :author "|引证"
      :text "|`<ul><wrap><li></li></wrap></ul>` 么？"
    {}
      :author "|Hax"
      :text "|`<shadowroot>`算是一个特殊元素，用来表示其下的东西其实在当前dom树里不能直接访问的，你得用 document.querySelector(my-xxx).shadowRoot.querySelector('div')去访问"
    {}
      :author "|Hax"
      :text "|这样想的话，好像也就说得通了。"
    {}
      :author "|Hax"
      :text "|@引证 ul这个例子是比较好玩的。如果是现在一般框架的自定义组件，做法就是弄一个my-list，然后全然替换为 `<ul>...</ul>`。如果是webcomponents标准的玩法，就是弄一个 ul is=my-list，然后替换内容。所以可以发现两者的template，前者是需要替换的，后者则只针对内容。"
    {}
      :author "|Hax"
      :text "|@E0 slot机制跟这个差异没有关系吧。大家都可以用slot机制。。。"
    {}
      :author "|E0"
      :text "|多套一层的优势是啥呢……"
    {}
      :author "|Hax"
      :text "|并不是说有什么优势。只是说更像原生的html/dom。一定要说优势的话，就是markup/dom结构包含了所有的信息。"
    {}
      :author "|E0"
      :text "|而且性能会更差吧"
    {}
      :author "|Hax"
      :text "|我们不能单独根据嵌套多一层就认为性能差。导致性能差的是深度嵌套，多一个元素其实并不是核心因素。"
    {}
      :author "|Hax"
      :text "|我认为性能问题的核心其实是在于初始化和rending一个组件，这部分其实是不变的。标签只是一个形式上的东西。"
    {}
      :author "|Trotyl"
      :text "|保留组件层与否的 DOM 深度是一样的吧。。不保留组件层的时候组件视图里自己要 Wrap 一层，保留组件层的时候内部就不需要根节点来包装了。。[皱眉]"
    {}
      :author "|Hax"
      :text "|我们可以这样说，加了一个div节点固然是可能有一点开销，这是因为一个div节点是一个全能的dom元素，但是你考虑加一个template节点，或者加一个上面的shadowroot节点，它的开销就没有那么大，因为它并不是一个普通的全能的dom元素。"
    {}
      :author "|Hax"
      :text "|如果你考虑virtual dom，那就好像更没啥大差别了。"

    {}
      :author "|Bot"
      :text "|(播放完成)"
