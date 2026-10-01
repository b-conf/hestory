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
yarn compile
VITE_BASE_URL=https://cos-sh.tiye.me/b-conf/hestory/pr/ yarn build
node --test test/runtime.test.mjs
```

##### 目录结构

未设置 `VITE_BASE_URL` 时保持相对资源路径。上传及公开访问验证使用 COS Action 内置 verify 配置，不添加额外 CDN 校验脚本。原语音模式、存储键、共享字体和服务器部署路径不变。依赖仍有已发布 Markdown 与 UI/js-ffi 的版本请求冲突，不宣称严格 Caps 通过。

已知运行时阻塞：Markdown 0.4.46 在 `data/2018-07-13-vue-internals.cirru` 的行内代码消息中触发 `Invalid data in elements tree`，等待 [上游修复 #61](https://github.com/Respo/respo-markdown.calcit/pull/61) 合并并发布。现有检查不代表所有历史 Markdown 内容兼容完成。运行测试使用真实编译组件及 SDK 导入，浏览器 Worker/DOM/语音宿主使用 fixture，不会请求付费 TTS。

- `data/` 目录存放整理出来的消息数据.
- `main.js` 是 Vite 的 JS 代码入口，业务代码保存在 `calcit.cirru` 中.
- `calcit.cirru` 是项目唯一的 Calcit 源码快照；请使用 Calcit CLI 或编辑器进行结构化修改，不要直接手改生成内容.
- `calcit.cirru` 编译生成的文件会在 `js-out/` 里边.

其他配置还有资源目录, 应该接近平常的 js 项目了.

### License

MIT
