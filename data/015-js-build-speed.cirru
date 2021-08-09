
{}
  :idx |015
  :title "|js 编译加速"
  :messages $ []
    {}
      :author |Bot
      :text "|(2018年某一天)"

    {}
      :author "|Dafeng"
      :text "|大家有遇到本地开发时js编译速度太慢，做云编译的经验吗？"
    {}
      :author "|徐飞"
      :text "|这个问题，我觉得要抛开webpack，走向以前贺老说的方向，往systemjs的方向走"
    {}
      :author "|Dafeng"
      :text "|大厂里没这个问题吗？"
    {}
      :author "|小问"
      :text "|接Jenkins→docker→webpack算么"
    {}
      :author "|小问"
      :text "|前面加个github pr"
    {}
      :author "|Dafeng"
      :text "|本地测试时也这样吗"
    {}
      :author "|Dafeng"
      :text "|PR 前"
    {}
      :author "|小问"
      :text "|本地测试这样搞就有点麻烦"
    {}
      :author "|小问"
      :text "|云编译理论上省不了什么时间"
    {}
      :author "|小问"
      :text "|时间大多花在依赖上了"
    {}
      :author "|Dafeng"
      :text "|可以的，只要cpu主频高，内存够大就可以。"
    {}
      :author "|徐飞"
      :text "|未变动的文件不构建，一直带缓存走，仅变动的文件构建，然后才走后续环节"
    {}
      :author "|徐飞"
      :text "|我觉得要走这条路"
    {}
      :author "|小问"
      :text "|是的"
    {}
      :author "|徐飞"
      :text "|缓存上次构建的中间结果，否则都是治标不治本"
    {}
      :author "|小问"
      :text "|webpack默认都是单worker，占用本地资源还不到5%"
    {}
      :author "|小问"
      :text "|顶多就是检索依赖构建graph快一些"
    {}
      :author "|Dafeng"
      :text "|我们开了多worker编译了"
    {}
      :author "|天猪"
      :text "|@Dafeng 我看淘宝的 DEF 就是云构建的"
    {}
      :author "|天猪"
      :text "|@徐飞 蚂蚁那边应该也有吧？"
    {}
      :author "|小问"
      :text "|云编译只能做完全的license，不能做SaaS"
    {}
      :author "|徐飞"
      :text "|蚂蚁的只负责执行你的构建脚本，不负责帮你优化构建速度"
    {}
      :author "|小问"
      :text "|不是啥性能不性能的问题哈[掩面]"
    {}
      :author "|Dafeng"
      :text "|我还没想产品化... 就是解决现在开发体验太慢的问题"
    {}
      :author "|小问"
      :text "|我们的方案是docker来multi worker，用docker layer做缓存"
    {}
      :author "|引证"
      :text "|速度提升大吗？"
    {}
      :author "|引证"
      :text "|比如十倍的差距之类的？"
    {}
      :author "|小问"
      :text "|期待benchmark[奸笑]"
    {}
      :author "|Dafeng"
      :text "|@🔫 我记得webpack还没发持久化编译中间层，怎么做缓存呢？"
    {}
      :author "|nonamesheep"
      :text "|云构建看看 Google 的 Bazel ？"
    {}
      :author "|小问"
      :text "|哦，缓存是pr层判断的"
    {}
      :author "|小问"
      :text "|检测patch有没有需要编译的"
    {}
      :author "|Dafeng"
      :text "|看js diff？"
    {}
      :author "|小问"
      :text "|差不多吧，有的比如多一行多空格这种会被过滤掉"
    {}
      :author "|Dafeng"
      :text "|这个方式不错，可以做部署优化。开发时应该没法用，开发时走docker的话我们测试过会慢很多。"
    {}
      :author "|引证"
      :text "|我觉得如果要提升编译速度，就必须要求工具少做事"
    {}
      :author "|徐飞"
      :text "|我觉得要提升速度，摇树基本可以告别了，直接走原先那种类似module的cdn combo的方式"
    {}
      :author "|徐飞"
      :text "|这是虽然比较傻，但能解决问题的方式"
    {}
      :author "|徐飞"
      :text "|不久之后我也要面对这个问题。。"
    {}
      :author "|引证"
      :text "|唔，我觉得开发期的编译要少做事，时间短一些；release的时候编译时间长点没事"
    {}
      :author "|引证"
      :text "|webpack又不会像C++那种编译一个项目半小时"
    {}
      :author "|徐飞"
      :text "|那你是没见过webpack半小时的"
    {}
      :author "|徐飞"
      :text "|[呲牙]"
    {}
      :author "|Dafeng"
      :text "|嗯... 而且不用半小时，本地开发时，10秒就觉得很不爽了"
    {}
      :author "|引证"
      :text "|[捂脸]真没见过，莫非真有"
    {}
      :author "|徐飞"
      :text "|要是你在平台这头，就会常常看到一些怀疑人生的项目接进来"
    {}
      :author "|引证"
      :text "|C++编译慢，如果没法用硬件解决，一般需要码农在代码上优化一下：1.开启预编译头 2.前置声明减少依赖 3.打开编译cache"
    {}
      :author "|引证"
      :text "|但是不是自己的代码，要加快速度一般还是得靠分布式编译"
    {}
      :author "|Dafeng"
      :text "|嗯，问题就在... webpack相比c++这种相对成熟的构建系统，能用的成熟优化技巧实在太少了"
    {}
      :author "|Dafeng"
      :text "|https://github.com/webpack/webpack/issues/250 这个 issue 我从 2014 年开始一直跟到今天，他们说webpack 5会解决了。"
    {}
      :author "|Evan"
      :text "|cache-loader 可以缓解一点这个问题，不过很难配"
    {}
      :author "|Evan"
      :text "|cache key invalidate 条件很多"
    {}
      :author "|Evan"
      :text "|而且要放在合适的地方"
    {}
      :author "|Evan"
      :text "|vuepress 靠 cache-loader 二次编译可以快好几倍"
    {}
      :author "|Evan"
      :text "|当然 webpack 能做内置的傻瓜式支持是最好的"
    {}
      :author "|Dafeng"
      :text "|这个有一些文章可以参考吗？我觉得我们估计是没配对"
    {}
      :author "|Dafeng"
      :text "|刚问了 facebook 那边，他们就是云端开发"
    {}
      :author "|Evan"
      :text "|放在合适的地方是因为 vue-loader 机制比较特殊，按理说 react 应用应该比较简单一点才对"
    {}
      :author "|Evan"
      :text "|但 facebook 不用 webpack 吧"
    {}
      :author "|Dafeng"
      :text "|嗯 他们不用，但据说编译也很慢"
    {}
      :author "|Evan"
      :text "|你要解决的是跑测试时候的编译慢吧"
    {}
      :author "|Dafeng"
      :text "|本地开发时编译慢"
    {}
      :author "|Evan"
      :text "|实际开发的时候有 hmr 啊"
    {}
      :author "|黄玄Hux(+9h)"
      :text "|因为 monorepo [捂脸]"
    {}
      :author "|Evan"
      :text "|hmr 还是慢？"
    {}
      :author "|Dafeng"
      :text "|嗯嗯...也慢，我们也是 monorepo[捂脸]"
    {}
      :author "|黄玄Hux(+9h)"
      :text "|只有 Reason 快（逃"
    {}
      :author "|Dafeng"
      :text "|然后内存吃了6-8g [捂脸]"
    {}
      :author "|Evan"
      :text "|hmr 还是慢我觉得无解了哈哈哈"
    {}
      :author "|天翔Skyline"
      :text "|每次hmr都需要1-2s的飘过[捂脸]"
    {}
      :author "|Evan"
      :text "|1-2s 还好啦"
    {}
      :author "|Dafeng"
      :text "|10秒的飘过"
    {}
      :author "|Evan"
      :text "|hmr 10秒 感觉有点问题"
    {}
      :author "|Dafeng"
      :text "|嗯嗯，我研究一些cache-loader配置，我觉得肯定配置有问题"
    {}
      :author "|Dafeng"
      :text "|然后让同事研究一下云编译吧，其实应该不难搞"
    {}
      :author "|徐飞"
      :text "|云编译哪能解决你这个问题"
    {}
      :author "|Dafeng"
      :text "|可以啊"
    {}
      :author "|Dafeng"
      :text "|代码在远端，服务器cpu主频选个高的，内存选个大的"
    {}
      :author "|天翔Skyline"
      :text "|感觉解不了……"
    {}
      :author "|Dafeng"
      :text "|我现在macbook pro顶配就比老的机子快很多啊"
    {}
      :author "|天翔Skyline"
      :text "|加上happypack了么？"
    {}
      :author "|Dafeng"
      :text "|加了"
    {}
      :author "|天翔Skyline"
      :text "|如果加上还10s的话……"
    {}
      :author "|Evan"
      :text "|云堆硬件 [捂脸]"
    {}
      :author "|天翔Skyline"
      :text "|感觉纯堆配置真的有点悬……"
    {}
      :author "|Dafeng"
      :text "|对的，就是云堆硬件[捂脸]"
    {}
      :author "|nonamesheep"
      :text "|[捂脸]"
    {}
      :author "|Dafeng"
      :text "|话说macbook pro架构现在越来越sb了，垃圾电池导致主频根本上不去"
    {}
      :author "|Anon"
      :text "|不应该是垃圾散热么[捂脸]"
    {}
      :author "|Dafeng"
      :text "|续航时间只能2小时。本地没法堆硬件，只能云堆硬件了。"
    {}
      :author "|Evan"
      :text "|理论上 cache-loader 没法改善 hmr 慢"
    {}
      :author "|Evan"
      :text "|hmr 应该已经是增量编译了"
    {}
      :author "|Evan"
      :text "|肯定是有什么地方误触发了 cache invalidation"
    {}
      :author "|Dafeng"
      :text "|嗯嗯，我觉得是的"
    {}
      :author "|Evan"
      :text "|可以 profile 一下时间都花在哪里了"
    {}
      :author "|Evan"
      :text "|就是不知道 profiler 会不会爆 [捂脸]"
    {}
      :author "|Dafeng"
      :text "|旧电脑时爆了，现在也许可以"
    {}
      :author "|Evan"
      :text "|你们应用多大啊"
    {}
      :author "|游真"
      :text "|我一直觉得webpack的hmr挺慢的。之前systemjs最快，瞬间"
    {}
      :author "|Dafeng"
      :text "|打包出来吗？还是总文件数目？"
    {}
      :author "|Evan"
      :text "|都可以"
    {}
      :author "|Dafeng"
      :text "|我算一下"
    {}
      :author "|Hax"
      :text "|我觉得最快的方法是买一台20核cpu,64G内存的机器先用着。"
    {}
      :author "|Thyiad"
      :text "|你们的mac怎么散热的。。"
    {}
      :author "|游真"
      :text "|JS的编译，多核没用吧"
    {}
      :author "|太狼"
      :text "|HappyPack"
    {}
      :author "|Hax"
      :text "|@游真 取决于你有多少任务可以并行。"
    {}
      :author "|nonamesheep"
      :text "|只transpile的话一般文件级别就可以多核并行"
    {}
      :author "|小爝"
      :text "|分布式编译"
    {}
      :author "|小爝"
      :text "|这个方向靠谱 大型软件都这么搞 手机系统 微软的大型软件"
    {}
      :author "|小爝"
      :text "|单机有配置限制的 早晚也有瓶颈"
    {}
      :author "|灵魂腹肌猫"
      :text "|能拆的拆成好几个项目，不能拆的只打包正在开发的模块 [捂脸] 我们这么搞的"
    {}
      :author "|小爝"
      :text "|excel或者word这种软件编译都是分布式多机的 也没办法拆 传统软件分布式编译很多应该 前端现在量级还不够 忍一忍都不是事"
    {}
      :author "|小爝"
      :text "|[捂脸]"
    {}
      :author "|芋头"
      :text "|多核有用"
    {}
      :author "|芋头"
      :text "|我是6核，可以明显看到是六个六个的。。"
    {}
      :author "|小爝"
      :text "|[捂脸]"
    {}
      :author "|芋头"
      :text "|再服务器上编译就是2个2个的。。"
    {}
      :author "|小爝"
      :text "|申请一个32核的 再开超进程翻倍"
    {}
      :author "|小爝"
      :text "|嗷嗷的"
    {}
      :author "|徐飞"
      :text "|你这思路显然不对，他策略是多招几个小弟，每人一个8核机器，无限扩容。。"
    {}
      :author "|小爝"
      :text "|emmm 对头"
    {}
      :author "|芋头"
      :text "|还是用大型机编译吧"
    {}
      :author "|小爝"
      :text "|期待webpack 可以分布式部署的一天…"
    {}
      :author "|Hax"
      :text "|其实开发阶段，如果能够避免打包，只做单文件编译，就很快了。"

    {}
      :author "|Bot"
      :text "|(播放完成)"
