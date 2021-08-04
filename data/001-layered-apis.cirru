
{}
  :id |001-layered-apis
  :title "|章节 1 - 关于 layered apis"
  :messages $ []
    {}
      :author "|晋晓炜"
      :text "|https://github.com/drufball/layered-apis 用这种方式实现标准库，感觉在 Node 环境会比浏览器环境更好用，浏览器端多半还是会为了加载优化而打包进去 "
    {}
      :author "|Hax"
      :text "|支持 layered apis 的都是非常新的浏览器，所以你可以确定它支持 http2 和 serviceworker，而且 layered apis 设计为用于 high-level 特性，"
    {}
      :author "|Hax"
      :text "|也就是说，加载问题不会很严重，你也可以用 serviceworker 去优化。所以不应该打包进去。 "
    {}
      :author "|Hax"
      :text "|顺便，一个麻烦的问题是 polyfill 的原则性问题。在这个事情上我觉得 domenic 自己啪啪打脸。见我正好刚刚看完的长篇吵架 https://github.com/w3ctag/polyfills/issues/2 。 "
    {}
      :author "|Hax"
      :text "|说起来，domenic 的吵架也很不友善，我对他粉转路了。 "
    {}
      :author "|晋晓炜"
      :text "|http2 和 service worker 还不能替代掉现在所有的加载优化手段，包括代码压缩，tree shaking，prepack "
    {}
      :author "|米粽"
      :text "|一个函数一个库，就不会摇树了 "
    {}
      :author "|Hax"
      :text "|代码压缩、tree shaking、prepack都是与runtime基本无关的优化，跟使用 layed apis不矛盾啊。 "
    {}
      :author "|晋晓炜"
      :text "|我是想这种方式可以用来实现标准库，js 不是一直缺个靠谱的标准库嘛 "
    {}
      :author "|Hax"
      :text "|看上去 layered apis 不会用来实现标准库。。。 "
    {}
      :author "|Hax"
      :text "|可能只会用来实现 high-level 的 web platform apis。 "
    {}
      :author "|晋晓炜"
      :text "|看上去这个语法用来做标准库挺合适的样子，我脑补了下感觉没什么大毛病 "
    {}
      :author "|Hax"
      :text "|因为他们的设计目标里是这么写的：“Enable the creation of high-level features” "
    {}
      :author "|Hax"
      :text "|至于说标准库，主要是（是否要）模块化的问题。 "
    {}
      :author "|Hax"
      :text "|https://docs.google.com/presentation/d/1QSwQYJz4c1VESEKTWPqrAPbDn_y9lTBBjaWRjej1c-w/view#slide=id.p "
    {}
      :author "|Hax"
      :text "|特别是这页：https://docs.google.com/presentation/d/1QSwQYJz4c1VESEKTWPqrAPbDn_y9lTBBjaWRjej1c-w/view#slide=id.g2939460675_0_136 "
    {}
      :author "|米粽"
      :text "|Houdini.js 的意思？ "
    {}
      :author "|晋晓炜"
      :text "|Problem: How do we do polyfills? - Need to be able to import the built-in version, patch it, and re-export a modified version 这个没看明白，"
    {}
      :author "|晋晓炜"
      :text "|下面一句说的不是 polyfill，是 override。跟小标题是怎么联系起来的？ "
    {}
      :author "|E0"
      :text "|这又在吵啥。。 "
    {}
      :author "|Hax"
      :text "|@烟波战 那个意思是可能需要 patch built-in 的 api。 "
    {}
      :author "|Hax"
      :text "|这只是一个需要讨论的 problem，也可能结论是不要支持这样的功能。 "
    {}
      :author "|Hax"
      :text "|@E0 长篇吵架 https://github.com/w3ctag/polyfills/issues/2 主要是在吵 polyfill 可不可以在有 native impl 的时候，delegate 到 native。 "
    {}
      :author "|E0"
      :text "|原来这里的defer是这个意思"
    {}
      :author "|Bot"
      :text "|(播放完成)"
