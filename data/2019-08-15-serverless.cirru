{}
  :idx |024
  :title "|Serverless 比喻"
  :messages $ []
    {}
      :author |Bot
      :text "|(2019年某一天)"

    {}
      :author "|天猪"
      :text "|前几天看到对 Serverless 的一个比喻，感觉很贴切： 现在工程师对云服务的使用，就像当年的工程师用汇编来编程一样。 都是事事亲为，需要花很大精力小心翼翼的搞什么负载均衡，缓存，队列 vs 需要手动操作寄存器，堆栈。 而 Serverless 之于工程师，就像 Java 等高级语言的出现。"
    {}
      :author "|引证"
      :text "|[强]非常赞同"
    {}
      :author "|chenyong"
      :text "|😯"
    {}
      :author "|芋头"
      :text "|😯"
    {}
      :author "|之昊"
      :text "|这就是螺旋上升，而契机是生产力工具的改革。工具效率高，让原来多人才能做好的工作一个人就能做好，但不断发展的业务也会带来问题的难度的提升，此时又会在新架构下出现细分领。"
    {}
      :author "|芋头"
      :text "|学习"
    {}
      :author "|之昊"
      :text "|云上原生应用的概念也提了好久了"
    {}
      :author "|小问"
      :text "|FaaS之于开发的好处就是解放生产力"
    {}
      :author "|小问"
      :text "|但是解放生产力的同时又不能加以太多的限制"
    {}
      :author "|天猪"
      :text "|刚从 C 转 Java 的工程师可能会抱怨，你给我的限制太多了。但其实很多限制都是没关系的。"
    {}
      :author "|芋头"
      :text "|感觉离我们公司的业务还很远"
    {}
      :author "|小问"
      :text "|个人感觉FaaS跟业务没有太多的联系，没有那么多需要keep alive的业务"
    {}
      :author "|桑绿"
      :text "|运维和研发这两个岗位会彻底分离吧"
    {}
      :author "|天猪"
      :text "|哈， dev + ops -> devops -> dev(noops) + ops"
    {}
      :author "|小问"
      :text "|在Infra角度看就是灵活性和易用性的矛盾平衡"
    {}
      :author "|chenyong"
      :text "|haskell 这么多限制照样有人写得出来"
    {}
      :author "|小问"
      :text "|FaaS 周边服务的 SDK 设计得好不好，直接影响开发体验，不是说 FaaS 就直接解放生产力了"
    {}
      :author "|小问"
      :text "|比如我昨天说的数据库连接，如果提供的 SDK 直接帮我解决各种问题就好得很，但如果只允许我用 MongoDB 或者 DynamicDB 我就得好好思考一下了"
    {}
      :author "|桑绿"
      :text "|这要看 Serverless 基础能力的支持，业务场景肯定是做不完的，所以需求也是源源不断的。哪些能力需要下沉，哪些能力继续由开发者来做也是需要慢慢探索的"
    {}
      :author "|之昊"
      :text "|我想起以前的同事，c程序员，项目急需他写js，每天边骂边开发，项目结束后写了60页的ppt总结自己的感受，并逐一对比了c和js的区别，以及设计思路的不同"
    {}
      :author "|之昊"
      :text "|很后悔没存一份备份。"
    {}
      :author "|天猪"
      :text "|楼上这位是搞阿里小程序云的"
    {}
      :author "|小问"
      :text "|这就是一个架构博弈的过程，假如我是 FaaS 的 Infra，我就得思考我如何设计 SDK 尽可能为我的客户提供完备的能力，但又不会把手往业务深得太深"
    {}
      :author "|天猪"
      :text "|这块的概念定义其实大家都还没统一， 我理解 FaaS 这个词就是一个底层的能力，FC 那样的。我们 SFF 除了借用这块能力外，还有上层的框架 runtime，研发流程整合，前端研发模式融合，三方服务整合之类的。"
    {}
      :author "|zack"
      :text "|可以说说具体有哪些问题或者场景，我们可以参考借鉴下"
    {}
      :author "|小问"
      :text "|我这边最复杂的 FaaS 场景是涉及TensorFlow模型计算的搜索"
    {}
      :author "|小问"
      :text "|这样加起来就很像 LeanCloud 那种模式了"
    {}
      :author "|小问"
      :text "|其实我还蛮喜欢 LeanCloud、Meteor 那种模式的，就是比较难 scale，这个感觉 @Evan 比较有话语权"
    {}
      :author "|桑绿"
      :text "|研发模式融合特别挑战 Serverless 平台的话语权 😂"
    {}
      :author "|小问"
      :text "|我比较好奇你们的 BFF 有没有为第三方数据来源做特别的优化，比如其他的 API 和业务方原本的数据库"
    {}
      :author "|小问"
      :text "|毕竟不像自己提供的存储服务那么有控制权"
    {}
      :author "|天猪"
      :text "|什么方面的优化？那些不就是微服务么，直接按协议调用就好了"
    {}
      :author "|小问"
      :text "|你们是所有的数据连接都是即用即抛弃的？"
    {}
      :author "|桑绿"
      :text "|数据库服务化了，服务当作代理来用"
    {}
      :author "|桑绿"
      :text "|所以对函数来说，所有皆 API"
    {}
      :author "|之昊"
      :text "|这些讨论脱离了业务规模和实时性的要求就都没办法分辨好坏了"
    {}
      :author "|Jasin Yip"
      :text "|还是我昨晚的思路，数据库这类的应封装成 Baas，查个数据就发个 RPC 到 Baas 服务接口上，然后在请求返回中得到数据，就这么简单，不用关心什么连接池。"

    {}
      :author "|Bot"
      :text "|(播放完成)"
