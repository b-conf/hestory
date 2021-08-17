{}
  :idx |017
  :title "|private field 问题"
  :messages $ []
    {}
      :author |Bot
      :text "|(2018年某一天)"

    {}
      :author "|Hax"
      :text "|@Evan @E0 @a nonamesheep 各位Vue大大，我发现一个问题。当换成proxy之后，跟private field是本质性不兼容的。。。目前因为缺乏proxy transparency，所以会扔typeerror，但是即使解决了typeerror问题，仍然是不行的。因为Vue要收集依赖。"
    {}
      :author "|Hax"
      :text "|但是 class { #x = 1; inc() { this.#x++ } count() { return this.#x} } 这个代码里，我们根本无法知道 inc() 之后 count() 是会变化的。因为当前语义根本不允许你知道#x的存在，你自然也无法通过#x把它们联系起来。"
    {}
      :author "|Hax"
      :text "|当然即使现在的getter/setter也是一样不行的。。。反正只要是hard private就是不行的。"
    {}
      :author "|Hax"
      :text "|唯一可能的方式，是基于private symbol，并且允许class的author暴露这些symbol给Vue，也就是，需要friend（友元）。"
    {}
      :author "|nonamesheep"
      :text "|是这样的，如果用户选择private field的话，应该是认为他不希望框架能碰这些字段。因此也没有reactivity。当然问题是如果用户希望的是不暴露给其他用户，但是仍然希望用 reactivity 的话就是另外的问题了。我是觉得private field一开始就有类似 friend 的需求。"
    {}
      :author "|Hax"
      :text "|这时候，反而是dirty check 可以工作 [流泪]"
    {}
      :author "|徐飞"
      :text "|“反而”"
    {}
      :author "|徐飞"
      :text "|不管怎样，它都可以工作的…"
    {}
      :author "|nonamesheep"
      :text "|dirty check 为什么能工作呢…"
    {}
      :author "|Hax"
      :text "|@徐飞 嗯。。。 react是靠每次都render，react hooks靠人肉写effects，ng靠dirty check。。。只有vue狠不幸啊。。。"
    {}
      :author "|Hax"
      :text "|@a nonamesheep 只要inc()我就认为dirty了，然后过一会儿去看看count()变了没。。。"
    {}
      :author "|nonamesheep"
      :text "|我记得 ng 以前的 dirty check 应该也是只检查字段不检查方法返回的…"
    {}
      :author "|Hax"
      :text "|这只是细节问题。。。"
    {}
      :author "|Trotyl"
      :text "|其实和 inc 调没调都没关系，只要有框架内注册的事件回调发生就会检查。。😳"
    {}
      :author "|徐飞"
      :text "|"
    {}
      :author "|Trotyl"
      :text "|写的什么就检查什么，绑定的是表达式，写什么都可以（不过不推荐调函数）。。[嘿哈]"
    {}
      :author "|Evan"
      :text "|Private field 其实我跟 aurelia 的作者还有 tc39 讨论过了"
    {}
      :author "|Evan"
      :text "|我觉得你要 reactivity 就别用 private fields，没什么意义"
    {}
      :author "|Evan"
      :text "|tc39 反正是不打算改"
    {}
      :author "|winter"
      :text "|private问题很多啊"
    {}
      :author "|winter"
      :text "|仔细想想全是坑"
    {}
      :author "|winter"
      :text "|好像把类方法和后挂上去的方法区分开了 那么问题来了 如果我把一个实例的method挂到另一个同类实例 会发生啥"
    {}
      :author "|winter"
      :text "|改个名呢？"
    {}
      :author "|winter"
      :text "|什么jb运行时啊"
    {}
      :author "|Hax"
      :text "|@Evan 悲剧的是，vue的用户不仅不能用private，连decorator都可能要挂。我跟他们说 @readonly 如果是在 own prop 上，那么子类可以用 @readwrite 来破坏约束。然后他们回答说，@readonly 应该是 configurable: false 的。这下好，用个 @readonly ，Vue就挂了。"
    {}
      :author "|Hax"
      :text "|本质上，任何decorator都有这个问题。实际上这不是decorator的问题，而是own prop的问题。所有子类父类整个链条就只有一个own prop，所以任何redefine 都潜在的破坏 invariant 。如果你要保证约束，就只有用 configurable: false 来阻断。于是所有 decorator 最终都 configurable: false了。[抠鼻]"

    {}
      :author "|Bot"
      :text "|(播放完成)"
