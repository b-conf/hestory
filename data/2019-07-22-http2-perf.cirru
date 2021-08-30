{}
  :idx |023
  :title "|HTTP2 负载性能"
  :messages $ []
    {}
      :author |Bot
      :text "|(2019年某一天)"

    {}
      :author "|CSS魔法"
      :text "|想请教一下各位，切到 HTTP/2 之后，Web 服务器的负载有什么变化吗？ 我在网上搜到 HTTP/2 压力测试文章，都说性能消耗更少了，但那测试的方式真实的 Web 服务器的工作方式貌似有蛮大的差别。所以想问问各位大大的实际项目情况 [抱拳]"
    {}
      :author "|占友伟"
      :text "|负载没测过，但是速度杠杠的"
    {}
      :author "|之昊"
      :text "|有数据吗？"
    {}
      :author "|占友伟"
      :text "|木有诶，自己创业，没那么完善😂"
    {}
      :author "|汉弗里"
      :text "|负载提升主要体现在 TLS 和 http push 吧，应该能找到 benchmark 的，我找找"
    {}
      :author "|yuanyuan"
      :text "|Web 服务器能有什么负载…"
    {}
      :author "|yuanyuan"
      :text "|前端快了点加不了多少负载"
    {}
      :author "|yuanyuan"
      :text "|吧？"
    {}
      :author "|CSS魔法"
      :text "|这个我不确定啊。毕竟 HTTP/1 和 HTTP/2 的工作方式有很大差别，H2 可能负载更高，也可能更低。 所以我来问问大家实际项目的情况。"
    {}
      :author "|汉弗里"
      :text "|TLS 有额外的 RTT，还增加了 CPU 时间"
    {}
      :author "|汉弗里"
      :text "|不过 http/2 支持多路复用，所以这个会削弱 TLS 的性能影响"
    {}
      :author "|之昊"
      :text "|我们数据是在模拟同样丢包25%的情况下，http2和http1.1打开一个真实页面的速度是接近的，丢包越小http2优于http1.1，丢包越高的时候http2劣于http1.1，原因应该是队头阻塞。"
    {}
      :author "|引证"
      :text "|这个说的是客户端吧"
    {}
      :author "|之昊"
      :text "|服务器的压力本身还好"
    {}
      :author "|之昊"
      :text "|丢包在pc场景以及cdn部署正常的情况下，一般在3%以下"
    {}
      :author "|占友伟"
      :text "|你们都是自己实现啊，我是直接阿里云开的全站加速[捂脸]"
    {}
      :author "|占友伟"
      :text "|CDN 自带 HTTP2"
    {}
      :author "|之昊"
      :text "|移动h5和超远距离的（海外）的情况下丢包会上升一些，但也基本不会达到25%"
    {}
      :author "|nonamesheep"
      :text "|我也是 aws http2 傻瓜包[捂脸],从来没想过丢包的情况…"
    {}
      :author "|太狼"
      :text "|h2 对于我们前端的意义是可以打更细粒度的 chunk，一个 node_modules 包一个 chunk，一组相关的业务一个 chunk，实现更细粒度的 predictable long term cache"
    {}
      :author "|之昊"
      :text "|pc啊"
    {}
      :author "|太狼"
      :text "|初次加载时间会增加一点点，但是后续加载时间会减少不少，特别是我们一周十几次发布这种情况"
    {}
      :author "|汉弗里"
      :text "|@之昊 这个原因应该是是 TCP 的队首阻塞，http/2 用 http pipeling 解决了 http 的队首阻塞，tcp 的在 http/3 解决"
    {}
      :author "|之昊"
      :text "|我们在启动http2+quic"
    {}
      :author "|引证"
      :text "|PC就是客户端啊"
    {}
      :author "|引证"
      :text "|我记得以前就看过类似这种，客户端上的速度对比 http://www.http2demo.io/"
    {}
      :author "|汉弗里"
      :text "|@之昊 你的测量都是 tls？http 1.1 也有队首阻塞啊"
    {}
      :author "|之昊"
      :text "|我们用的是自己的播放页做测试对象，是没有针对http2做过优化的，用无头浏览器无缓存刷新跑了24小时的结果"
    {}
      :author "|之昊"
      :text "|所以我们只是推断丢包上升带来的性能下降是队首阻塞带来的"
    {}
      :author "|汉弗里"
      :text "|应当是因为 http/2 并发只开一个 tcp 链接的缘故吧，每次拥堵 tcp 都会减半窗口，导致每秒传递的字节数不如并发开了 6 个以上 tcp 的 http/1.1"
    {}
      :author "|汉弗里"
      :text "|Http1.1 只会队首阻塞比 http2 严重"
    {}
      :author "|汉弗里"
      :text "|不过改进方向是对的啦，spdy 或者 http/3"
    {}
      :author "|汉弗里"
      :text "|这个数据我也找到 benchmark 佐证了：https://www.twilio.com/blog/2017/10/http2-issues.html"
    {}
      :author "|汉弗里"
      :text "|不过我查了下资料，前面有地方讲错是 http2 是通过多路复用和快速丢弃不需要的流（RST_STREAM 帧）来解决 headofline blocking 的[捂脸]"
    {}
      :author "|小问"
      :text "|单点服务其实差别不大吧，2或许负载会高一些"
    {}
      :author "|小问"
      :text "|2的场景不是打更细颗粒的chunk，让支持2的CDN来处理，然后把可预测的动态资源用server push推出去，最后剩下的请求自然就比1要低一些？"
    {}
      :author "|CSS魔法"
      :text "|请教，为啥单点服务差别不大？"
    {}
      :author "|汉弗里"
      :text "|用不用 push 都可以更细度，毕竟并发量提上去了"
    {}
      :author "|小问"
      :text "|在不支持多路复用的情况下我们的做法不都是大bundle么？长加载时间换取少握手次数，2就变成了小chunk多路并发，单点服务下就是个互换啊"
    {}
      :author "|小问"
      :text "|实际怎样还得问问@之昊 他们这些重客户端的，我们全扔CDN上玩"
    {}
      :author "|之昊"
      :text "|为什么我们就成了重客户端的代表了啊。。。。"
    {}
      :author "|小问"
      :text "|难不成让我们这些UV经常还不过万的to B来吗？……"
    {}
      :author "|之昊"
      :text "|我只是没有理解你对重客户端的定义，是指toC的业务么？"
    {}
      :author "|之昊"
      :text "|我们语境里的客户端指的是app"
    {}
      :author "|小问"
      :text "|差不多吧，H2对app也有好处吧"
    {}
      :author "|之昊"
      :text "|我们在app上还没开http2的实验"
    {}
      :author "|小问"
      :text "|B站 快手 微博这些大型toC业务，需要不断优化的场景的大佬们不都在群里么？@刘巍峰 @天翔Skyline "
    {}
      :author "|之昊"
      :text "|我看了一下淘宝、百度、腾讯的主要站点都上h2， 只有部分是html走http1.1，静态资源都是h2了"
    {}
      :author "|小问"
      :text "|我倒是挺想听听大佬们在除了多路复用以外对H2的应用，比如server push"
    {}
      :author "|小问"
      :text "|我知道饿了么有，可惜米粽不在群里"
    {}
      :author "|之昊"
      :text "|server push我也是看了的，用的人极少"
    {}
      :author "|小问"
      :text "|我觉得server push、service worker这些才是有较大想象空间的技术啊"
    {}
      :author "|之昊"
      :text "|目前我就看到youtube上有使用"
    {}
      :author "|小问"
      :text "|整天只用来优化加载，优化缓存总感觉没意思"
    {}
      :author "|小问"
      :text "|codesandbox是我最近看过比较有意思的，把webpack compiler放进worker里"

    {}
      :author "|Bot"
      :text "|(播放完成)"
