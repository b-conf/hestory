
{}
  :id |009-vue-ts
  :title "|章节 9 - Vue 和 ts"
  :messages $ []
    {}
      :author "|Hax"
      :text "|按照这个twitter 说法，主要是用在 hack/php 的 codebase上 "
    {}
      :author "|Hax"
      :text "|@Evan @E0 @a nonamesheep 刚才本司前端们开会讨论是否要把技术栈统一到react或vue上。按出息人来统计，react/vue阵营是6:6（不算我）。对vue不太满意的人很大一点是vue和ts的结合。。。 "
    {}
      :author "|yubo"
      :text "|[偷笑]哈哈 "
    {}
      :author "|yubo"
      :text "|就差你这重要的一票 "
    {}
      :author "|E0"
      :text "|始终有一半人不满意 "
    {}
      :author "|Hax"
      :text "|有个同学比较有趣，说vue-cli太好用了，但是他不喜欢被照顾得无微不至，所以他选react[捂脸] "
    {}
      :author "|引证"
      :text "|竟然没有骑墙派，“我觉得都可以” "
    {}
      :author "|Hax"
      :text "|骑墙派就是没有投票的人啊。 "
    {}
      :author "|nonamesheep"
      :text "|(Quote 前文) 哈哈[阴险] "
    {}
      :author "|yubo"
      :text "|(Quote 前文) 哪他不用vue-cli 就好啦 "
    {}
      :author "|引证"
      :text "|那他肯定讨厌angular "
    {}
      :author "|Hax"
      :text "|@yubo 你可能没有get到他的点 "
    {}
      :author "|Maxwell"
      :text "|哈哈哈哈哈哈哈哈哈哈哈 "
    {}
      :author "|Hax"
      :text "|有些事情大家是有共识的，比如vue的文档一定是比react强多了 "
    {}
      :author "|Maxwell"
      :text "|人不能过得太舒服吗哈哈哈哈哈哈哈哈哈哈哈 "
    {}
      :author "|Hax"
      :text "|这个点我理解是，太好用了，简直小白都能用！可是我不是小白。。。 "
    {}
      :author "|yubo"
      :text "|[偷笑] "
    {}
      :author "|小问"
      :text "|Vue跟ts也不是不行，就是比较蛋疼 "
    {}
      :author "|yubo"
      :text "|我知道，但是这种人适合做工程吗？ "
    {}
      :author "|小问"
      :text "|要用一个第三方工具来做class component "
    {}
      :author "|yubo"
      :text "|或者说适合团队合作吗？ "
    {}
      :author "|Hax"
      :text "|@yubo 也不好从这点就判断。而且我们要鼓励大家畅所欲言。 "
    {}
      :author "|E0"
      :text "|出一个 Vue.js 精英版 "
    {}
      :author "|yubo"
      :text "|[呲牙] "
    {}
      :author "|nonamesheep"
      :text "|（再出一个 Vue.js传说版，Vue.js 史诗版 "
    {}
      :author "|引证"
      :text "|[表情] "
    {}
      :author "|徐飞"
      :text "|那个不是第三方，是官方库了 "
    {}
      :author "|徐飞"
      :text "|只是不再写原先那种扩展名 "
    {}
      :author "|E0"
      :text "|等 Vue 3 看来是来不及了 "
    {}
      :author "|徐飞"
      :text "|说实话，我觉得逻辑写成 class 都是一样，只是 vue 的 decorator 内容不同，跟ng 的差别是： vue 的 decorator 里面不包含视图，但包含 props ng 的 decorator 里面包含视图 "
    {}
      :author "|徐飞"
      :text "|class 写法的时候，编写体验不如 ng，比如模板中的提示 "
    {}
      :author "|nonamesheep"
      :text "|Vue3可以比较好的支持 class 了 "
    {}
      :author "|nonamesheep"
      :text "|虽然没 decorator 还会稍稍有点麻烦 "
    {}
      :author "|Hax"
      :text "|最好是不需要decorator...毕竟decorator目前也还不是标准。。。 "
    {}
      :author "|nonamesheep"
      :text "|（想想 decorator 那一串 issue 就只能望而却步 "
    {}
      :author "|徐飞"
      :text "|这是 ng 很久以前的样子了 "
    {}
      :author "|nonamesheep"
      :text "|😢 "
    {}
      :author "|引证"
      :text "|没有decorator的话，ng的元信息怎么注入，写类里么 "
    {}
      :author "|nonamesheep"
      :text "|放在 static 里 "
    {}
      :author "|nonamesheep"
      :text "|class App { static template = '<代码>' } "
    {}
      :author "|徐飞"
      :text "|[吐]其实就是 App.template = '<代码>' 几种写法都一样，ng1就是这样的 "
    {}
      :author "|E0"
      :text "|没啥区别 "
    {}
      :author "|徐飞"
      :text "|是的 "
    {}
      :author "|Evan"
      :text "|没有 TSX？ "
    {}
      :author "|Evan"
      :text "|还是觉得 class 写法繁琐？ "
    {}
      :author "|天翔Skyline"
      :text "|不喜欢class写法…… "
    {}
      :author "|天翔Skyline"
      :text "|我一直比较讨厌react之一就是他把state，lifecycle，methods全都拍平了…… "
    {}
      :author "|天翔Skyline"
      :text "|然后现在如果想在vue里面使用ts，要么就是延用class，要么就是需要原来的写法+手动声明类型 "
    {}
      :author "|小问"
      :text "|我之前用的时候还要靠一个 vue-property-decorator "
    {}
      :author "|徐飞"
      :text "|我主要极其讨厌jsx "
    {}
      :author "|Evan"
      :text "|其实都要用 TS 的人了几乎肯定会用 class "
    {}
      :author "|徐飞"
      :text "|对 "
    {}
      :author "|小问"
      :text "|jsx跟class没有关系吧 "
    {}
      :author "|Evan"
      :text "|不喜欢 class 不喜欢 jsx 跟 TS 没啥关系 "
    {}
      :author "|徐飞"
      :text "|对 "
    {}
      :author "|小问"
      :text "|我只是想在script tag里用ts class比较爽一些 "
    {}
      :author "|徐飞"
      :text "|我是回答天翔，我不喜欢r的原因 "
    {}
      :author "|nonamesheep"
      :text "|比较麻烦的现在class 转config object的开销，其他都还行 "
    {}
      :author "|天翔Skyline"
      :text "|所以写起来会很繁琐……就只能迁移class写法 "
    {}
      :author "|天翔Skyline"
      :text "|或者不用ts "
    {}
      :author "|Evan"
      :text "|我就是好奇 @Hax 公司觉得 Vue 和 TS 结合不好的到底是哪里觉得不好 "
    {}
      :author "|小问"
      :text "|其实打平挺好的，现在我用mobx + react 最爽的是纯class操作 "
    {}
      :author "|Evan"
      :text "|Vue 3 可以改进 "
    {}
      :author "|小问"
      :text "|绝大部分的逻辑都是写class的时候可控的 "
    {}
      :author "|小问"
      :text "|哪怕说vue也提供一堆decorater我也是能接受的 "
    {}
      :author "|Evan"
      :text "|Vue 3 其实已经支持打平的 TS class 了，我这两天已经在用新 api 写内置组件了 "
    {}
      :author "|小问"
      :text "|赞 "
    {}
      :author "|徐飞"
      :text "|赞 "
    {}
      :author "|Evan"
      :text "|目前的设计不依赖 decorators，因为不希望一定要依赖 stage 2 的编译才能用 "
    {}
      :author "|小问"
      :text "|有demo吗 "
    {}
      :author "|引证"
      :text "|写法有变化吗？ "
    {}
      :author "|Evan"
      :text "|直接裸写 es2015 的 api 跟 TS 完全一样，除了 TS 可以加泛型参数 "
    {}
      :author "|Evan"
      :text "|旧的对象格式依然兼容 "
    {}
      :author "|小问"
      :text "|data 是 class property 还是一个名为data的属性？ "
    {}
      :author "|小问"
      :text "|这个我比较关心。。 "
    {}
      :author "|nonamesheep"
      :text "|是一个方法 "
    {}
      :author "|天翔Skyline"
      :text "|一个method "
    {}
      :author "|小问"
      :text "|严重涉及开发体验哈哈 "
    {}
      :author "|Evan"
      :text "|data 是一个返回对象的方法 "
    {}
      :author "|小问"
      :text "|那还是跟旧版本的vue一样啊 "
    {}
      :author "|太狼"
      :text "|data 类型能正确 merge 到 this 上吗 "
    {}
      :author "|Evan"
      :text "|可以，加上泛型参数就可以 "
    {}
      :author "|小问"
      :text "|我用 https://github.com/kaorun343/vue-property-decorator 的原因就是可以用 decorator 装饰到 class 上 "
    {}
      :author "|Evan"
      :text "|定义一个 data 的 interface，一个 props 的 interface，传给 extend 的 class "
    {}
      :author "|Evan"
      :text "|都会被 merge 到 this 上 "
    {}
      :author "|nonamesheep"
      :text "|很棒的折衷 "
    {}
      :author "|Evan"
      :text "|这是默认的只依赖 es2015 的情况，如果一定要用 class 属性来声明 data 和 props，还是可以用 decorators "
    {}
      :author "|Hax"
      :text "|@Evan 回头针对这个问题我再去收集一轮。"

    {}
      :author "|Bot"
      :text "|(播放完成)"
