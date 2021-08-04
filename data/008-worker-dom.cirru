
{}
  :id |008-worker-dom
  :title "|章节 8 - 关于 WorkerDOM"
  :messages $ []
    {}
      :author "|nonamesheep"
      :text "|突然想到 WorkerDOM 里的同步操作是不是能用Atomics来模拟啊？ "
    {}
      :author "|Hax"
      :text "|@a nonamesheep 啥意思？ "
    {}
      :author "|nonamesheep"
      :text "|比方 worker里面如果模拟 dom 的话，大概会碰到e.preventDefault这样的 API "
    {}
      :author "|nonamesheep"
      :text "|emulatedDOM.on('click', e => e.preventDefault() ) "
    {}
      :author "|nonamesheep"
      :text "|这样的 api 是同步的现在没法模拟出来，但是我如果用atomics.wait的话就可以拦住执行流了。但是在 main thread 里还得用 while (Atomic.load(flag)) 这样的自旋锁来模拟同步 "
    {}
      :author "|Hax"
      :text "|？ "
    {}
      :author "|Hax"
      :text "|没搞懂你哪部分在worker里执行。。。 "
    {}
      :author "|Hax"
      :text "|dom event是同步的，也就是 element.dispatchEvent(e) 是同步执行的。。。 "
    {}
      :author "|nonamesheep"
      :text "|worker dom 里对dispatchEvent有重新实现，在那里用atomics做 blocking，是不是就可以模拟同步执行的效果？ "
    {}
      :author "|nonamesheep"
      :text "|等我哪天有空了试一下…[捂脸] "
    {}
      :author "|Hax"
      :text "|你的 emulatedDOM 这个对象在主线程上？ e=>e.preventDefault()也是在主线程上？ "
    {}
      :author "|nonamesheep"
      :text "|emulatedDOM在 worker thread 上，preventDefault在 emuldate DOM和真 DOM 都有一份，真 dom 的 handler 在执行的时候发送给 worker thread 一个假 event，然后 while 循环做自旋锁，worker 里的假 dom 收到event消息后处理，处理完了用 atomic 把main thread 的锁解除了 "
    {}
      :author "|nonamesheep"
      :text "|对…主线程不能 wait 只能 while 了…… "
    {}
      :author "|Hax"
      :text "|你是在研究 https://github.com/ampproject/worker-dom 么？ "
    {}
      :author "|nonamesheep"
      :text "|看 workerdom的 slide 说以后会有transferrable event，可以在非主线程上处理事件 "
    {}
      :author "|nonamesheep"
      :text "|worker dom的想法其实 Angular很早就有了…… "
    {}
      :author "|Hax"
      :text "|为了看 worker dom 我先看了一遍 https://github.com/domenic/proposal-blocks ... [捂脸] "
    {}
      :author "|Hax"
      :text "|感觉这个提案还不错。 "
    {}
      :author "|Hax"
      :text "|hydration 的那个部分是为了压缩？？ "
    {}
      :author "|Hax"
      :text "|@a nonamesheep https://speakerdeck.com/cramforce/workerdom-javascript-concurrency-and-the-dom?slide=47 "
    {}
      :author "|Hax"
      :text "|看到最后才明白，amp本来是不允许脚本的，所以workerdom是为了让amp页面可以加脚本（并且不影响性能） "
    {}
      :author "|Hax"
      :text "|不过对于三大框架来说，倒是一个现成可用的东西。当然react似乎自己搞了一套。。。angular和vue可以捡现成了！yeah! "
    {}
      :author "|nonamesheep"
      :text "|React 自己搞了 worker dom？ "
    {}
      :author "|Hax"
      :text "|我是说react自己搞了fiber架构之类的嘛。。。 "
    {}
      :author "|Hax"
      :text "|既然都可以跑在worker里，感觉fiber那套的必要性就小了哈。。。 "
    {}
      :author "|Hax"
      :text "|不得不说，google还是猛！amp我一直不喜欢的原因就是禁止脚本实在限制太大。结果没想到google最后搞了这个workerdom，在基本不改变现有代码习惯的情况下解决问题。 "
    {}
      :author "|nonamesheep"
      :text "|希望 Google 别弃坑… "
    {}
      :author "|Hax"
      :text "|既然是在amproject下，应该不会弃坑。"

    {}
      :author "|Bot"
      :text "|(播放完成)"
