
Hestory
----

> Some history from WeChat

Demo http://r.tiye.me/b-conf/hestory .

### Usages

从微信扒数据, 然后按照 `data/` 当中的格式保存, 再源码里进行索引.

### 语音

默认让 Chrome 合成语音.

`?api-get=xunfei` 激活讯飞语音模式. 不过免费 API 数量有限, 需要手动配置自己的 app key:

申请地址 https://console.xfyun.cn/services/tts

```js
localStorage.setItem("xunfei-secrets", JSON.stringify({
  id: '<TODO>',
  secret: '<TODO>',
  key: '<TODO>'
}))
```

`?api-get=audio&audio-host=<地址>` 切换到本地提供的语音服务,
参考 https://github.com/worktools/to-speech-google .

### Workflow

运行项目具体参考: https://github.com/calcit-lang/respo-calcit-workflow

需要安装 Rust 以及 calcit_runner, 然后才是 Node.js 以及 calcit-editor.

##### 目录结构

- `data/` 目录存放整理出来的消息数据.
- `main.js` 是 Vite 的 js 代码入口, 但是业务主题代码在 `compact.cirru` 当中.
- `calcit.cirru` 和 `compact.cirru` 是由 calcit-editor 生成的, 不需要手动改.
- `compact.cirru` 编译生成的文件会在 `js-out/` 里边.

其他配置还有资源目录, 应该接近平常的 js 项目了.

### License

MIT
