
{}
  :idx |005
  :title "|关于 Babel 编译"
  :messages $ []
    {}
      :author "|E0"
      :text "|https://babeljs.io/blog/2018/06/26/on-consuming-and-publishing-es2015+-packages 你们怎么看这篇里讨论的问题 "
    {}
      :author "|E0"
      :text "|项目编译要不要带上 node_modules 里的包一起 "
    {}
      :author "|王宇uZ"
      :text "|还没看我认为不应该，包提供编译好的 "
    {}
      :author "|王宇uZ"
      :text "|不知道看看会不会改变看法 "
    {}
      :author "|徐飞"
      :text "|现在阿里内部貌似都假定不带，意味着内部发包，必须自己转一份es5一起 "
    {}
      :author "|E0"
      :text "|如果期望最优化的输出，就要带上一起编译 "
    {}
      :author "|E0"
      :text "|不过要给每个 package 自行声明编译的信息的渠道 "
    {}
      :author "|E0"
      :text "|声明在 package.json 的 module 里的 entry，有可能需要转译，也有可能是 esm+es5 的…… "
    {}
      :author "|太狼"
      :text "|如果项目是其它语言用奇怪的工具链编译的就很疼了 "
    {}
      :author "|徐飞"
      :text "|在某个公司内部是可以这么约定的，如果包的来源不可控的话，就没法了 "
    {}
      :author "|E0"
      :text "|是的 比如有人用 babel 有人用 ts "
    {}
      :author "|徐飞"
      :text "|这个很多新来的不知道，一般踩一次坑就知道了。。 "
    {}
      :author "|E0"
      :text "|我还有一个引申的问题，比如我的包本地开发需要一个 babel-plugin-foo，我会把他加到 devDependencies 里。但如果需要一起打包，我应该把 babel-plugin-foo 加到哪种 dependencies 里？现有的几种语义似乎都对不上。 "
    {}
      :author "|Hax"
      :text "|如果按照我那个预言，显然这不是个问题。。。依赖当然不应该编译。。。因为依赖的包也在云上，由云自动提供最适合client的编译版本…… "
    {}
      :author "|Hax"
      :text "|每个人都自行编译依赖，只会浪费计算资源和增加bug…… "
    {}
      :author "|E0"
      :text "|这个又有一个问题，发布到“云”上的包，什么 stage 的语法可以用？还是只能用已经定稿的？ "
    {}
      :author "|E0"
      :text "|而且你在远程对包做单独编译并不解决上面那篇文章想解决的问题 "
    {}
      :author "|Hax"
      :text "|那些插件可用，只是一个细节问题。云完全可以支持任何插件的任何版本。 "
    {}
      :author "|Hax"
      :text "|我认为babel7的这个东西对于大公司的monorepo是有用的，但是对于整个生态意义不大。毕竟没人关心我的深层依赖是如何编译的，用的什么语法和插件。 "
    {}
      :author "|Hax"
      :text "|我理解他说的问题是解决依赖的cost问题。那云是能更好的解决这个问题的。 "
    {}
      :author "|Hax"
      :text "|关键就是，预先编译永远不可能比runtime更有效的解决cost问题。 "
    {}
      :author "|E0"
      :text "|首先大公司不会相信其他公司的这个 runtime 能稳定，自己搞一套成本也很高 "
    {}
      :author "|Hax"
      :text "|大公司的东西不愿意依赖他人，当然是一个问题，但也不是不能解决。云服务不一定要中心化，也可以是分布式的，或者可以有若干个。就好像notification服务，大家可以自己都来一个，但大家都符合标准，可以互通就行了。我认为我描述的云服务完全可以是这样的，毕竟你退化到底，就是一个cdn么。 "
    {}
      :author "|Hax"
      :text "|举个例子，polyfill.io 其实已经具有我预言的一部分能力若干年了。最近某人告诉我阿里fork了一份，然后在自己的cdn上上了。 "
    {}
      :author "|E0"
      :text "|退化的话预编译还是逃不掉啊…… "
    {}
      :author "|Hax"
      :text "|退化到底就是没有针对ua的自动适配不同的编译版本，而只是提供一个版本，也就是npm发布出来的东西，那不就是个unpkg.org。。。 "
    {}
      :author "|Hax"
      :text "|当然，我讲的这些只针对web app。node.js应用就不好用。不过node.js应用也不care依赖的cost... "
    {}
      :author "|E0"
      :text "|unpkg 你不预编译还是没法用啊 "
    {}
      :author "|E0"
      :text "|编译的时候和本地代码一起打包不光是转译正确性的问题……还有共享 runtime 代码等等 "
    {}
      :author "|E0"
      :text "|你每个包自然可以预编译好很多降级版本，但是会造成很多重复 "
    {}
      :author "|Hax"
      :text "|是啊。所以为啥让云自动去做这个才合适。 "
    {}
      :author "|E0"
      :text "|一起打包解决的不是 cost 的问题，而是性能问题 "
    {}
      :author "|Trotyl"
      :text "|https://jspm.io/ 就是一个云编译的方案，虽然方向不太一样，是编译到 ES Module。。（但考虑到 CommonJS 转 ES Module 的语义其实没法用）[皱眉] "
    {}
      :author "|Hax"
      :text "|嗯？@E0 我理解他说的就是编译到es5的版本可能太大之类的问题。。。还有啥性能问题？ "
    {}
      :author "|E0"
      :text "|尺寸大也是“性能”的一个方面嘛 "
    {}
      :author "|E0"
      :text "|不是说执行速度 "
    {}
      :author "|E0"
      :text "|（代码多了跑得也的确会更慢嘛） "
    {}
      :author "|Hax"
      :text "|是的。我的意思是云服务可以为不同的ua编译不同的版本。但是就算某个云服务没有这么细致，粗放一点，我也可以只提供2个版本，一个是所谓latest版本一个是es5版本。甚至最差的情况就是我只有es5版本（也就是npm发布的版本）。 "
    {}
      :author "|Hax"
      :text "|目前lib author通常只发一个编译成es5的版本，部分人会发两个版本，一个es5(commonjs)版本，一个es201x(es module)版本。"
    {}
      :author "|Hax"
      :text "|如果有云的服务，那么理想上，我们就只需要发sourcecode，然后只需要标明用了哪些（当前）还是stage-x的，以及一些自定义的插件。然后就直接发包了。用户使用的时候就是指定好包，以及所使用的云就好了。云负责从npm拖过去然后编译。 "
    {}
      :author "|Hax"
      :text "|大公司如果不信任别人可以自己建云嘛，就好像自己建npm仓库一样嘿。 "
    {}
      :author "|E0"
      :text "|esm 和是不是 es5 其实没有必然联系 "
    {}
      :author "|E0"
      :text "|比如 vue 的 module 字段指向的入口就是 esm+es5 的…… "
    {}
      :author "|Hax"
      :text "|我知道。所以让大家自己编译都是不太靠谱的嘛。 "
    {}
      :author "|Hax"
      :text "|不过vue选择esm+es5确实比较神奇，为啥不是esm+es2015的？ "
    {}
      :author "|Trotyl"
      :text "|Angular 里面 esm 的 es5 和 esm 的 es2015 都有，想用什么用什么。。[皱眉] "
    {}
      :author "|米粽"
      :text "|因为从umd变一个esm比较方便？ "
    {}
      :author "|E0"
      :text "|一般项目默认不编译node_modules，但是webpack认识module "
    {}
      :author "|E0"
      :text "|所以解决了commonjs和esm互操作的问题吧 "
    {}
      :author "|E0"
      :text "|.default "
    {}
      :author "|Trotyl"
      :text "|ES5 的 ESM 一般是用于只打包不编译的，能够保存良好的 DCE 效果又不用额外的预处理过程。。[皱眉] "
    {}
      :author "|E0"
      :text "|对，现在的问题是你想提供一个允许被一起编译的包，没法声明 "
    {}
      :author "|Trotyl"
      :text "|可以给一个叫 esnext 的入口，允许使用未进入标准的提案。。但是不标准的就麻烦了。。😳 "
    {}
      :author "|E0"
      :text "|babel blog 上 henry 那篇就在说这个……"

    {}
      :author "|Bot"
      :text "|(播放完成)"
