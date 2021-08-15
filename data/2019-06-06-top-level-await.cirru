{}
  :idx |020
  :title "|top-level await"
  :messages $ []
    {}
      :author |Bot
      :text "|(2018年某一天)"


    {}
      :author "|chenyong"
      :text "|https://github.com/tc39/proposal-top-level-await"
    {}
      :author "|chenyong"
      :text "|Twitter 上说 stage 3 了"
    {}
      :author "|Heaven"
      :text "|有段时间了"
    {}
      :author "|E0"
      :text "|这个好像坑还挺多的，影响依赖树加载的时序"
    {}
      :author "|Hax"
      :text "|个人感觉，坑虽然有，不过不算特别大。如果一定要说的话，可能更大的问题在于，对于可加可不加的语言特性，似乎最终都会倾向于加进去。。。"
    {}
      :author "|Hax"
      :text "|从工程角度说，top level await 可以通过 linter 禁止（如果你很不喜欢的话）。不过问题还是在于你无法控制你的依赖包是否用了 top level await（从而可能无限block你）。"
    {}
      :author "|小问"
      :text "|用一个async main函数不行么……"
    {}
      :author "|chenyong"
      :text "|偷偷 block 你 [囧]"
    {}
      :author "|Hax"
      :text "|没有top-level await是不可能block你的，他能做的最多就是产生一个promise。。。"
    {}
      :author "|E0"
      :code? true
      :text "|package.json: async: true"
    {}
      :author "|E0"
      :text "|[奸笑]"
    {}
      :author "|Hax"
      :text "|你意思用 package.json 来允许 top level await？"
    {}
      :author "|E0"
      :text "|好像只能用来声明自己用没用 [皱眉]"
    {}
      :author "|Hax"
      :text "|跟声明自己是pure有类似之处。。。"
    {}
      :author "|Hax"
      :text "|感觉这个思路得倒过来，topAwait: true。因为现有的代码都是没有的。所以应该让新的用到的代码声明自己用到了。"
    {}
      :author "|E0"
      :text "|我就是你说的这个意思"
    {}
      :author "|Hax"
      :text "|然后我们可以怎样呢？比如可以有policy禁止依赖链里有topAwait:true的模块？"
    {}
      :author "|E0"
      :text "|至少可以检查一个？"
    {}
      :author "|Hax"
      :text "|构建的时候报个warning之类的？？"
    {}
      :author "|Hax"
      :text "|我刚刚想了一下，其实似乎强制要求 top-level await 传染是一个相对好的方式。即用了top level await的模块不能用普通的 import 语法导入，而必须用特殊语法诸如 await import ... from ... 来导入，这也使得该模块自身也变成了一个top-level await模块。由此传染上去 [调皮]"
    {}
      :author "|Hax"
      :text "|这避免了某个深度依赖模块突然加入top level await所可能造成的潜在长时间block的风险。"
    {}
      :author "|引证"
      :text "|还是async main吧"
    {}
      :author "|Hax"
      :text "|@引证 async main并不会block。。。他们就是有block的需求。"
    {}
      :author "|Hax"
      :text "|https://gist.github.com/Rich-Harris/0b6f317657f5167663b493c722647221 其实有（比较有社区影响力的）人反对过这个提案，但是他貌似被tc39搞定了……说“搞定了”是因为我不认为他技术上的反对理由都被解决了。"
    {}
      :author "|Hax"
      :text "|我猜他被“搞定”的一个方面是：`(async main(){...}())` 或者用promise导出的替代方案对静态分析不友好。Rich Harris作为rollup的作者显然非常重视静态可分析。"
    {}
      :author "|Hax"
      :text "|但我认为这个理由其实是不足的。因为要对静态分析更友好，未必一定要top level await，我们也可以引入do expression，比如 `do { ... await ... }` 即允许 do expression里支持await，并让整个do expression 返回promise。"
    {}
      :author "|引证"
      :text "|do{ }没有返回值吧？"
    {}
      :author "|Hax"
      :text "|有的吧。"
    {}
      :author "|Hax"
      :text "|https://github.com/tc39/proposal-do-expressions"
    {}
      :author "|Hax"
      :text "|当然目前的草案里是没有await支持的。"
    {}
      :author "|引证"
      :text "|竟然还有这个提案，为了取代IIFE么 "
    {}
      :author "|Jasin Yip"
      :text "|赞"
    {}
      :author "|chenyong"
      :text "|6"
    {}
      :author "|Hax"
      :text "|是，IIFE太麻烦。而且还有这样的例子： let x; if (...) x = 1; else x = 2; 你其实希望这样写：const x = if (...) 1; else 2 尤其是在jsx里。"
    {}
      :author "|Hax"
      :text "|不过这个提案的语法可能会有比较大的改变。"
    {}
      :author "|Hax"
      :text "|反正这个提案已经挺久了，到现在没有进入stage 2，肯定是tc39里有人不喜欢这个。"
    {}
      :author "|Heaven"
      :text "|以前火过，最近没看见谁还在用这个了"
    {}
      :author "|Hax"
      :text "|https://github.com/vuejs/rfcs/blob/dynamic-lifecycle/active-rfcs/0000-dynamic-lifecycle-injection.md 比较好奇vue这个 lifecycle injection的实现是啥样子的，跟react hooks一样往某个global变量上保存一下吗？？"
    {}
      :author "|Evan"
      :text "|对，当前组件是全局变量"

    {}
      :author "|Bot"
      :text "|(播放完成)"
