
{}
  :id |004-vue-internals
  :title "|章节 4 - 一些 vue 内部"
  :messages $ []
    {}
      :author "|Hax"
      :text "|我个vue渣渣请教下关于vue的内部机制 —— 目前vue会通过包装后的getter来收集property依赖，具体大概是某个getter触发后（一般方法调用是否也？）簿记所有getter返回之前触发的其他getter来得到该property（或方法？）所依赖的其他property。——这理解对不？"
    {}
      :author "|米粽"
      :text "|有一层依赖收集，去通知下游的数据"
    {}
      :author "|天翔Skyline"
      :text "|依赖收集： new Watcher() ---> 扔Dep.target上 --> watcher.get() --> 触发getter --> 发现Dep.target不为空 --> 把watcher push到dep里"
    {}
      :author "|nonamesheep"
      :text "|(Quote 前文) 应该是对的，如果我没有理解错typo 的话"
    {}
      :author "|Hax"
      :text "|嗯，假如说不能使用该方式在runtime收集依赖，我们还有啥其他方法么？"
    {}
      :author "|Hax"
      :text "|手动标注？parser分析一下？"
    {}
      :author "|nonamesheep"
      :text "|Proxy是更好的方案，如果不考虑兼容性"
    {}
      :author "|E0"
      :text "|为啥不能使用？"
    {}
      :author "|nonamesheep"
      :text "|手动标注和 parse 没法拿到动态的依赖"
    {}
      :author "|nonamesheep"
      :text "|比如这个表达式 `if (random) { depA } else { depB }`"
    {}
      :author "|Hax"
      :text "|我就是再思考换成proxy之后的情况。。。"
    {}
      :author "|Hax"
      :text "|如果使用membrane的话，就没法收集依赖了，因为在调用之前target会从proxy被unwrap成原本的object。。。"
    {}
      :author "|nonamesheep"
      :text "|如果 random 在 true 的情况下，会只依赖 depA。如果换成静态分析的话，那就 depA 和 depB 就都有了"
    {}
      :author "|E0"
      :text "|你是在说上次 GitHub 上讨论的 Proxy 问题？"
    {}
      :author "|Hax"
      :text "|@E0 是的。"
    {}
      :author "|nonamesheep"
      :text "|嗯…"
    {}
      :author "|Hax"
      :text "|membrane的方式就只能让你得到直接的调用，得不到由该调用触发的其他调用。。。"
    {}
      :author "|Hax"
      :text "|其实我还有另外一个问题，因为我刚刚问了是否方法也会收集依赖。。。假设方法也会收集依赖，那么再假设这个方法是一个异步方法……那依赖收集还能work么？"
    {}
      :author "|Evan"
      :text "|所以我当时提的需求就是在不用 membrane 的情况下获得 tunnel private field 的能力啊"
    {}
      :author "|Evan"
      :text "|依赖收集本来就不能用 membrane"
    {}
      :author "|Evan"
      :text "|异步方法不能收集依赖"
    {}
      :author "|Evan"
      :text "|但组件渲染过程是同步的，所以关系不大"

    {}
      :author "|Bot"
      :text "|(播放完成)"
