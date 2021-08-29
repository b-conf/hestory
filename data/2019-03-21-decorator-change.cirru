{}
  :idx |019
  :title "|decorator 提案改变"
  :messages $ []
    {}
      :author |Bot
      :text "|(2019年某一天)"


    {}
      :author "|Hax"
      :text "|整个decorator提案大改了一通。。。"
    {}
      :author "|Hax"
      :text "|直接加了个新构造了。。。"
    {}
      :author "|Hax"
      :code? true
      :text "|export decorator @logged { @wrap(f => { const name = f.name; function wrapped(...args) { console.log(`starting ${name} with arguments ${args.join(\", \")}`); f.call(this, ...args); console.log(`ending ${name}`); } wrapped.name = name; return wrapped; }) }"
    {}
      :author "|Hax"
      :text "|这例子真是。。。里面还用了一个 @wrap 的 builtin decorator..."
    {}
      :author "|Hax"
      :text "|而且现在 import 的方式也变了。"
    {}
      :author "|Hax"
      :code? true
      :text "|import { @logged } from \"./logged.mjs\";"
    {}
      :author "|nonamesheep"
      :text "|真假…"
    {}
      :author "|winter"
      :text "|我觉得自从tc39开始管事 js语言品味迅速恶化"
    {}
      :author "|winter"
      :text "|胡编乱造语法特性"
    {}
      :author "|Hax"
      :text "|所以现在这个新的提案是引入了一个新构造，并且为了满足现有的 use cases，同时加了若干个 builtin decorator 用于实现其他的 decorator。。。"
    {}
      :author "|引证"
      :text "|何苦呢？"
    {}
      :author "|引证"
      :text "|有点惊讶"
    {}
      :author "|winter"
      :text "|怀念Allen和Brendan主导的时代"
    {}
      :author "|Hax"
      :text "|@metadata 的那个例子用了三层decorator，真烧脑。。。"
    {}
      :author "|引证"
      :text "|三层？发来看看"
    {}
      :author "|Hax"
      :text "|https://github.com/tc39/proposal-decorators/ 直接看现在的提案呀。"
    {}
      :author "|winter"
      :text "|这么干基本不用调试了吧"
    {}
      :author "|winter"
      :text "|调用栈乱成一团"
    {}
      :author "|Hax"
      :text "|嗯。不过本来decorator调试就比较麻烦。。。"
    {}
      :author "|winter"
      :text "|各种高阶函数"
    {}
      :author "|Hax"
      :text "|现在的提案的主旨似乎是把 decorator 弄得静态化。"
    {}
      :author "|winter"
      :text "|这个我支持啊"
    {}
      :author "|winter"
      :text "|就是要静态化"
    {}
      :author "|Hax"
      :text "|由于 @xxx 现在是静态的。实际上就一定需要 codemod 来迁移现有的代码。从这个角度说，至少理论上又可以把 `#` 和 `@` 换一换了"
    {}
      :author "|Hax"
      :text "|反正总是要用 codemod 的。[呲牙]"
    {}
      :author "|winter"
      :text "|#是啥"
    {}
      :author "|winter"
      :text "|不是私有么"
    {}
      :author "|Hax"
      :text "|就是 #priv 啊。"
    {}
      :author "|winter"
      :text "|咋跟decorator有关了"
    {}
      :author "|Hax"
      :text "|我曾经建议过把两个符号换一下。"
    {}
      :author "|winter"
      :text "|哦 这没啥卵用吧"
    {}
      :author "|Hax"
      :text "|就是变成 @priv 和 #deco"
    {}
      :author "|winter"
      :text "|……"
    {}
      :author "|winter"
      :text "|这有啥用"
    {}
      :author "|Hax"
      :text "|虽然本质没啥卵用，但是有助于让大家获得心灵上的平和。。。"
    {}
      :author "|Hax"
      :text "|因为大家看 `this.#priv` 非常不顺眼，但是 `this.@priv` 似乎好多了（因为 ruby、coffee 都有这个语法）"
    {}
      :author "|winter"
      :text "|我理解decorator静态的意思是 它应该是声明式的，无代码的"
    {}
      :author "|winter"
      :text "|可被静态分析的"
    {}
      :author "|Hax"
      :text "|静态的意思是它更加静态可分析。"
    {}
      :author "|winter"
      :text "|有代码怎么静态分析呀"
    {}
      :author "|Hax"
      :text "|readme有两条写了：How does static analyzability help transpilers and other tooling? How does static analyzability help native JS engines?"
    {}
      :author "|winter"
      :text "|我看这个logged"
    {}
      :author "|winter"
      :text "|可不像是能静态分析的样子啊"
    {}
      :author "|winter"
      :text "|好吧 我懂了"
    {}
      :author "|winter"
      :text "|跟我理解的不太一样"
    {}
      :author "|Hax"
      :text "|decorator 的上下文关键字语法貌似是 @Trotyl 建议的。[调皮]"
    {}
      :author "|winter"
      :text "|我的意思是 wrap的内容应该是静态的"
    {}
      :author "|winter"
      :text "|不能传个函数进去呀"
    {}
      :author "|winter"
      :text "|那还静态分析个p"
    {}
      :author "|Hax"
      :text "|他们那个意思是decorator本身是静态的，但decorator的实现并不是。"
    {}
      :author "|Hax"
      :text "|https://github.com/tc39/proposal-class-fields/issues/227#issuecomment-469835891 @Evan 没懂你这个回复的意思。 ————— 2019-03-22 —————"
    {}
      :author "|引证"
      :text "|我看了他提供的三个builtin，貌似他们野心不止如此，目标是任何地方都能用上decorator，包括block"
    {}
      :author "|E0"
      :text "|@Hax https://github.com/tc39/proposal-class-fields/issues/227#issuecomment-469265790"
    {}
      :author "|引证"
      :code? true
      :text "|if(a) @abc(const x=a.x){ console.log(x.get()) }"
    {}
      :author "|引证"
      :text "|这样的话，很怪异"
    {}
      :author "|Hax"
      :text "|@E0 我就是没懂这个啥意思。。。"
    {}
      :author "|Hax"
      :text "|啥叫vue class返回一个proxy..."
    {}
      :author "|Hax"
      :text "|怎么就解决问题了。。。"
    {}
      :author "|E0"
      :text "|@littledan: “This way, the subclass constructor would see the observed thing as the this value, and private fields and methods would be added on the Proxy itself, so they would just work from methods. The Proxy would get defineProperty calls for field definitions, so there may need to be a little bit of logic to avoid observation callbacks from that.”"
    {}
      :author "|Hax"
      :text "|@引证 是。貌似他们最终想搞出一个 decorator language。有点像 macro。"
    {}
      :author "|Hax"
      :text "|@E0 这个话在哪里说的？"
    {}
      :author "|E0"
      :text "|vue-next (private)"
    {}
      :author "|Hax"
      :text "|private 的看不到啊。。。"
    {}
      :author "|Hax"
      :text "|俺需要更完整的上下文才能理解。。。[擦汗]"
    {}
      :author "|E0"
      :text "|他就说了这个。。小右说他做了实验可以 work"
    {}
      :author "|E0"
      :text "|还是等他来解释吧。。"
    {}
      :author "|Hax"
      :text "|至少有一点我觉得不像是可能解决的，是给一个vue component的属性本身赋值一个对象，这个对象也需要被vue proxy一下（至少vue2是这样的），那么这个对象如果是有private field的话，就会在被proxy之后挂掉。"
    {}
      :author "|Evan"
      :text "|对，这个依然不支持"
    {}
      :author "|Evan"
      :text "|只是支持了 extends Vue 的子类里面用 #private"
    {}
      :author "|E0"
      :text "|观察自定义类型的对象本来就有约束的吧"
    {}
      :author "|Evan"
      :text "|对"
    {}
      :author "|Hax"
      :text "|如果我理解正确，他意思是你写代码的时候得写成： `class MyComponent extends Vue.Component { constructor() {return Vue.proxy(this) } }` ？"
    {}
      :author "|Hax"
      :text "|虽然本来就有约束，但是基本上你不太会触雷，最多就是没法track某些属性，不至于莫名其妙就 throw TypeError。"
    {}
      :author "|Hax"
      :text "|我认为我前面讲的这个case是主要的问题。如果是component作者，总是有办法绕过这个问题，比如，就不用private field了嘛！但是前面这个case是针对component的使用者，而且他可能间接从别的地方拿来的对象，完全out of your control的。"
    {}
      :author "|Hax"
      :text "|我们都知道componet的使用者比component作者人群要大一大圈，然后平均技术能力和耐心都低一大截。所以我可以预言，若private field真的这样发布，随着private field的普及，会有越来越多的普通component使用者踩雷并跑到vue的repo来开issue。[悠闲]"
    {}
      :author "|Hax"
      :text "|另外一个问题是，我对vue3的预期。固然vue3可能component完全要用class写，但其实有很多轻量级场景我是不需要component class，只需要提供类似vue2的一个实例对象。所以我仍然希望有类似 const modelObj = Vue.proxy(originalModelObj); Vue.render(modelObj, template) 的方式来满足这类简单场景。"
    {}
      :author "|Hax"
      :text "|而这个 originalModelObj 里如果在任何一个层级上有一个带有 private field 的 obj，就会 typeerror 挂掉。这里的主要问题是可能那个obj是用户组装的： orignalModelObj.x = new X() 而这个X来自于第三方库，用户根本不知道（按照field提案的本意也不能让用户知道）X里用了private field。X可能本来没有用，在未来任何时候新版本悄咪咪的用了。。。然后用户会认为是vue的锅。"

    {}
      :author "|Bot"
      :text "|(播放完成)"
