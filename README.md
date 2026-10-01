## Hestory

> Some history from WeChat

Demo http://r.tiye.me/b-conf/hestory .

### Usages

从微信扒数据, 然后按照 `data/` 当中的格式保存, 再源码里进行索引.

### 语音

默认让 Chrome 合成语音.

`?api-get=xunfei` 激活讯飞语音模式. 不过免费 API 数量有限, 需要手动配置自己的 app key:

申请地址 https://console.xfyun.cn/services/tts

```js
localStorage.setItem(
  "xunfei-secrets",
  JSON.stringify({
    id: "<TODO>",
    secret: "<TODO>",
    key: "<TODO>",
  })
);
```

`?api-get=audio&audio-host=<地址>` 切换到本地提供的语音服务,
参考 https://github.com/worktools/to-speech-google .

### Workflow

运行项目具体参考: https://github.com/calcit-lang/respo-calcit-workflow

使用 Calcit 0.27.0、Node.js 24 与 Yarn 4.18.0。源码仅维护 `calcit.cirru` / `deps.cirru`，不恢复 `compact.cirru` / `package.cirru`；CI 禁止两个旧文件回流。

To develop:

```
caps --ci
yarn install --immutable
calcit calcit.cirru --check-only
yarn dev
```

To build:

```
VITE_BASE_URL=https://cos-sh.tiye.me/b-conf/hestory/ yarn build
node --test test/runtime.test.mjs
```

##### 目录结构

dev 先生成初始 JS，再共同运行 Calcit watch 和 Vite；任一进程退出时停止另一。build 包含一次编译。未设置 `VITE_BASE_URL` 时保持相对资源路径，每次 PR 上传按 PR/run/attempt 隔离。上传及公开访问验证仅使用 COS Action 内置 verify 配置，删除独立 CDN 校验脚本。CI 保留严格入口/公共合同、原质量基线和真实业务测试，不重复运行迁移诊断。原语音模式、存储键、共享字体和服务器部署路径不变。

Markdown 0.4.46 的行内代码渲染修复 [上游 #61](https://github.com/Respo/respo-markdown.calcit/pull/61) 已合并；在正式版本发布前固定完整提交 `1256d550445bf69573bc9e53bbccbea1ddcb0530`，不把该提交冒充已发布版本。运行测试使用真实编译组件及 SDK 导入，浏览器 Worker/DOM/语音宿主使用 fixture，不会请求付费 TTS，也不代表现场语音服务验收。

- `data/` 目录存放整理出来的消息数据.
- `main.js` 是 Vite 的 JS 代码入口，业务代码保存在 `calcit.cirru` 中.
- `calcit.cirru` 是项目唯一的 Calcit 源码快照；请使用 Calcit CLI 或编辑器进行结构化修改，不要直接手改生成内容.
- `calcit.cirru` 编译生成的文件会在 `js-out/` 里边.

其他配置还有资源目录, 应该接近平常的 js 项目了.

### License

MIT
