{}
  :idx |021
  :title "|yield syntax"
  :messages $ []
    {}
      :author |Bot
      :text "|(2019年某一天)"

    {}
      :author "|Hax"
      :text "|各位，`function.sent` 这个提案（有babel实现）有人用过么？或者至少有人有比较明确的use case么？"
    {}
      :author "|Hax"
      :text "|https://github.com/allenwb/ESideas/blob/master/Generator%20metaproperty.md 提案介绍在此。"
    {}
      :author "|Hax"
      :text "|babel插件在此：https://babeljs.io/docs/en/babel-plugin-proposal-function-sent"
    {}
      :author "|justjavac(迷渡)"
      :text "|是 callee 换了个马甲吗"
    {}
      :author "|Hax"
      :text "|我以前也实现过：https://github.com/hax/babel-plugin-transform-function-sent ，后来把这个包转让给了 npm 官方。"
    {}
      :author "|Hax"
      :text "|转让给了 babel 官方。"
    {}
      :author "|Hax"
      :text "|不是 callee。这个东西实际上是这样的 function *g() { console.log(yield) }; const x = g(); x.next(1); x.next(2);"
    {}
      :author "|Hax"
      :text "|这个代码会输出2 。但是第一次喂给他的1其实在generator里是拿不到的。"
    {}
      :author "|justjavac(迷渡)"
      :text "|[图片: png]"
    {}
      :author "|Hax"
      :text "|改成 `function *g() { for(;;) { console.log(function.sent); yield } };` 这样就能得到了。"
    {}
      :author "|justjavac(迷渡)"
      :text "|重点是这个吧"
    {}
      :author "|Hax"
      :text "|`function.sent` 就是上一次 `next()` 喂给它的值。包括第一次的next调用也可以得到。"
    {}
      :author "|Hax"
      :text "|这个提案因为现在没有champion，所以可能被inactive。我主要想问一下大家，有没有人还是想要这个东西的？"
    {}
      :author "|justjavac(迷渡)"
      :text "|https://github.com/allenwb/ESideas/issues/14"
    {}
      :author "|justjavac(迷渡)"
      :text "|我的第一感觉和这个 issue 相同，这个应该是 yield.sent 吧"
    {}
      :author "|Hax"
      :text "|awb已经解释了，因为 `yield.sent` 在non-strict模式下是一般的属性。"
    {}
      :author "|引证"
      :text "|下面各种取名：yield.last, yield.sent,yield.received"
    {}
      :author "|Hax"
      :text "|凡是用yield的都有这个问题。"
    {}
      :author "|Hax"
      :text "|无论如何，这是一个bikeshed问题。现在的关键是，如果没有champion，整个提案就要被干掉了。"
    {}
      :author "|Hax"
      :text "|所以我首先想问问，大家想要这个提案么？如果想要的话，我们就想办法去保留住它。然后建立一个正式的repo，去讨论诸如应该用什么语法的问题。"
    {}
      :author "|justjavac(迷渡)"
      :text "|`function.sent` 这个名字让我联想到了 callee"
    {}
      :author "|justjavac(迷渡)"
      :text "|我一般不用 yield（只在 redux-saga中用过）"
    {}
      :author "|引证"
      :text "|主要是现在用generator的，很少自己手动 `.next(val)`"
    {}
      :author "|justjavac(迷渡)"
      :text "|好久没有写过 `.next`"
    {}
      :author "|Hax"
      :text "|@引证 ，本身用next塞东西进去就是比较少见的。"
    {}
      :author "|Hax"
      :text "|我个人其实觉得当初设计的时候硬把这个东西设计成可双向传值，也许是想多了。。。"
    {}
      :author "|Hax"
      :text "|但是既然已经设计出来了，还是想问问有没有人觉得这个功能还是有用的。。。"
    {}
      :author "|引证"
      :text "|非手动的是挺多啊，co啊，saga啊都是这样，开发者手动这样的不多"
    {}
      :author "|Hax"
      :text "|所以你觉得co和saga的开发者可能是需要这个功能的？"
    {}
      :author "|引证"
      :text "|不需要啊"
    {}
      :author "|Hax"
      :text "|我是说co和saga的维护者。。。"
    {}
      :author "|引证"
      :text "|貌似不需要，他们都是为了求yeild后面表达式的值，然后传给前面的，所以根本没有你上面的那个例子的需求，也就是说第一次next()根本不需要传值"
    {}
      :author "|Hax"
      :text "|所以他们也只用到单向的传递是吧？"
    {}
      :author "|justjavac(迷渡)"
      :text "|saga 不需要吧，我猜"
    {}
      :author "|引证"
      :text "|`function *g() { console.log(yield) };` 这种saga只需要打印出undefined 就行了"
    {}
      :author "|Hax"
      :text "|嗯。所以它也只用了单向。"
    {}
      :author "|Hax"
      :text "|我个人理解，貌似parser可能会用function.sent"
    {}
      :author "|引证"
      :text "|[Quote 前文] 如果我写这个的话，我会写个 `function runG(g){}`，我的runG里可以第一次掉个`.next()`让它开始跑起来，我不会暴露一个generator让其他人自己传next()"
    {}
      :author "|Hax"
      :text "|@引证 这是现在可以用的workaround。你总是可以自己先调用一次next。"
    {}
      :author "|引证"
      :text "|我的意思就是，很少会让别人手动 `.next()`，所以应用案例少啊"
    {}
      :author "|Hax"
      :text "|所以我就是问大家能想到一些use cases么？"
    {}
      :author "|Hax"
      :text "|我能想到的就是一个parser的例子。 `function *parse() { for(;;) { dealwith(function.sent); yield /*wait for next token*/ } }`"
    {}
      :author "|引证"
      :text "[囧]这个我就爱莫能助了"
    {}
      :author "|小问"
      :text "|真想不到啥…"
    {}
      :author "|引证"
      :text "|「Quote 前文」 这个提案算stage0吗？"
    {}
      :author "|Hax"
      :text "|这个提案应该算 stage 2"
    {}
      :author "|Hax"
      :text "|（一个stage2的提案因为没有champion所以要被撤销……我觉得大家又要开始吐槽tc39了）"
    {}
      :author "|Hax"
      :text "|off-topic: 如果一定要说命名，其实我觉得 `yield.xxx` 总是有点confusing，容易跟你yield出去的值混淆。一定要我说，最好是 `generator.recieved` ，问题是 generator 不是关键字不能用，所以我可能会选 var.recieved —— 虽然也比较奇怪。"
    {}
      :author "|引证"
      :text "|[奸笑]generator不能用，那*recieved 怎么样"
    {}
      :author "|Hax"
      :text "|a = *recieved; 这样？"
    {}
      :author "|Hax"
      :text "|别的不说，新ASI问题肯定跑不了。"
    {}
      :author "|Hax"
      :text "|`foo *recieved.forEach(...)`"
    {}
      :author "|Hax"
      :text "|当然我觉得这个asi问题也不算特别严重，至少比class fields那一堆要好。"
    {}
      :author "|Hax"
      :text "|其实这个时候要是能用 `#` 倒好了。。。 `a = #recieved` [偷笑]"

    {}
      :author "|Bot"
      :text "|(播放完成)"
