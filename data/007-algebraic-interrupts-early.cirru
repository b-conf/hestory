
{}
  :id |007-algebraic-interrupts-early
  :title "|章节 7 - algebraic interrupts 早期"
  :messages $ []
    {}
      :author "|Hax"
      :text "|有人懂 Algebraic Effects 么？ "
    {}
      :author "|chenyong"
      :text "|工业聚不在群里 [皱眉] "
    {}
      :author "|吴名扬"
      :text "|@chenyong 有希望懂。上次看过原始的 paper 没弄明白 "
    {}
      :author "|Hax"
      :text "|https://github.com/reactjs/react-basic#algebraic-effects "
    {}
      :author "|chenyong"
      :text "|没有，cljs 里通常不会存在这么复杂的概念 [捂脸] "
    {}
      :author "|吴名扬"
      :text "|我只大概知道effect的部分，没弄明白algebraic的部分…… "
    {}
      :author "|Hax"
      :text "|先不说理论吧。react的这个用法，看上去也就是避免了在FancyBox这个函数里加上context参数。 "
    {}
      :author "|Hax"
      :text "|还有其他什么好处么？ "
    {}
      :author "|吴名扬"
      :text "|在这个例子里它充当了state的角色 "
    {}
      :author "|Hax"
      :text "|顺便，看上去这玩意儿也是可以用generator模拟出来的（就好像以前用generator模拟async一样）。 "
    {}
      :author "|吴名扬"
      :text "|对 "
    {}
      :author "|吴名扬"
      :text "|如果 context 是异步获取的话，这段代码就不用改 "
    {}
      :author "|Hax"
      :text "|哦，意思是我不必把fancybox改成一个async 函数。。。 "
    {}
      :author "|吴名扬"
      :text "|如果不用algebraic effect的话至少有地方要改成 promise(caller 或者 callee) "
    {}
      :author "|吴名扬"
      :text "|嗯，更进一步还能做类似dependency injection的事情 "
    {}
      :author "|Hax"
      :text "|不过用yield模拟似乎也无所谓 "
    {}
      :author "|吴名扬"
      :text "|是的 "
    {}
      :author "|Hax"
      :text "|我主要是在考虑，react的这个用途是否值得引入一个新的js特性。 "
    {}
      :author "|Hax"
      :text "|对，就类似依赖注入。。。 "
    {}
      :author "|Hax"
      :text "|但是。。。我一直觉得依赖注入对于js来说也不是很必要。你可以把这些函数套在一个大闭包里。。。 "
    {}
      :author "|Hax"
      :text "|这个react的例子不知道有什么不一样之处。。。 "
    {}
      :author "|Hax"
      :text "|嗯，大概是。。。你不想一层一层套闭包。。。 "
    {}
      :author "|Hax"
      :text "|而依赖注入通常没有一层一层的问题，就是一层而已。。。 "
    {}
      :author "|吴名扬"
      :text "|记得看 Sebastian 以前的推文，似乎就是希望利用algebraic effect 来避免改动之前没用到 注入/异步 的代码 "
    {}
      :author "|Hax"
      :text "|改总是要改的吧。加perform难道不是改？ "
    {}
      :author "|Hax"
      :text "|哦，我估计他意思是不会有传染问题。 "
    {}
      :author "|吴名扬"
      :text "|对，只要改一个地方就够了，不像async/yield要把所有调用链路全改了 "
    {}
      :author "|Hax"
      :text "|加参数也是传染的。。。这样看来确实有点儿意思。 "
    {}
      :author "|吴名扬"
      :text "|嘛，对于动态类型语言和 AOP 差不多的 "
    {}
      :author "|Hax"
      :text "|问题是已经有async,gen的情况下，加effect是不是好？毕竟在有effect的情况下，前两者貌似是不需要的。[捂脸] "
    {}
      :author "|吴名扬"
      :text "|个人还是更喜欢generator... "
    {}
      :author "|Hax"
      :text "|effect还可叠加 "
    {}
      :author "|chenyong"
      :text "|感觉有点像，scheme call with current continuation"

    {}
      :author "|Bot"
      :text "|(播放完成)"
