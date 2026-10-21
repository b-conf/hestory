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

使用者影响：本轮从 alpha.4 配对升级到正式 Calcit/procs **0.30.1**、Caps 0.1.1、Node.js 24 与 Yarn 4.18.0，并使用正式 Memof 0.0.40 / Markdown 0.4.58。Snapshot 与现有 main 不变；历史消息数据、语音模式/语言/速率/延时、存储键、公共资源及部署路径不变。不合并或部署业务应用，验收状态以 PR 的精确提交结果为准。
此前 main 已使用具名 OpEnvelope 和正式 Memof 0.0.39 修复缓存合同；需要完整刷新页面，不能保留旧回调。业务 Op 和 typed Reel 的记录格式不变，不迁移或清空历史数据。Memof 0.0.40 不改 0.0.39 的源码/API；Anchor `.deref` 返回 Option，后续新增调用需处理缺失值，本项目当前不使用 Anchor。源码仅维护 `calcit.cirru` / `deps.cirru`，不恢复 `compact.cirru` / `package.cirru`；CI 禁止两个旧文件回流。

本轮正式产物验收发现：HTML 与 COS 不同源时，启动阶段创建 CDN Worker 会抛出
SecurityError 并白屏。讯飞转码 Worker 改用 Vite `?worker&inline`，避免跨域入口，
不修改转码算法、语音参数或部署路径。原 Node 业务 fixture 仅同步导入 query，不放宽断言。
未设置讯飞凭据的原提示保留，不使用付费语音或读取已有浏览器密钥；若部署站点另设 CSP，
需独立确认其 Worker 策略，本 PR 不自动放宽 CSP。

To develop:

```
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify
yarn dev
```

To build:

```
VITE_BASE_URL=https://cos-sh.tiye.me/b-conf/hestory/ yarn build
node --test test/runtime.test.mjs
```

##### 目录结构

dev 先生成初始 JS，再启动 Vite；修改 Calcit 时在另一终端运行 `yarn watch`，无需进程管理依赖。build 包含一次编译。未设置 `VITE_BASE_URL` 时保持相对资源路径，每次 PR 上传按 PR/run/attempt 隔离。上传及公开访问验证仅使用 COS Action v1.2.0 内置 verify 配置，不添加独立 CDN 校验脚本。生产部署排队执行，上传前检查仍为当前 main，过期构建跳过 COS 和原服务器同步。CI 检查所有定义、禁止 deprecated 调用并运行原有真实业务测试；退休旧的 `analyze quality` 数量基线，不新增校验脚本。原语音模式、存储键、共享字体和服务器部署路径不变。

模块同步正式 Reel 0.6.39、Feather 0.4.29、Markdown 0.4.58、UI 0.7.41、Respo 0.16.122、Memof 0.0.40、js-ffi 0.2.3，不使用模块 hash/alpha 或新的 npm 安装年龄例外。Actions 使用与原 SHA 核对一致的精确正式 tag，接受 tag 可移动风险；只读权限和 HEAD 检查不是 secret 防窃取保证。

业务数据采用 Message、Story、Store、Op 与 typed Reel；历史 Cirru/TOML Map 仅在加载入口规范化和解码，Respo 通用 UI 状态保留开放边界。类型仍明确时将业务 Op 放入 OpEnvelope，穿过 UI 回调后用 struct-match 验证并取回同一 Op，不重复解码已有 nominal Message/List，也不增加强转。typed Reel 的控制操作仍走原 decode-control 路径。
原10处 unsafe 改为实际宿主形状/String 检查，保留可空 voice/onend 等真实宿主初始状态；raw JavaScript speech cancellation 不是 FfiTask，未按名字机械改写。使用 defref、具名直接构造和显式 Unit 返回，不新增 compiler proof/fix 规则或验证脚本。

此前 alpha.4 迁移的 313/313 全定义检查、完整 strict、immutable 安装和 JS/Vite 生产构建通过；原10项业务断言全部通过，测试仅适配派发入口和真实浏览器宿主能力的 fixture，不跳过或放宽断言。这些历史结果不等于本轮正式工具链验收。独立 typed Reel 更新/回放保留同一 Op 与消息列表，错误 carrier 被拒绝。
旧 Memof 0.0.38 的缓存命中及合同问题已补充 [Memof #48](https://github.com/calcit-lang/memof/issues/48#issuecomment-6239970102)，本轮使用正式 0.0.39 验收，不移除实际使用的缓存、不修改共享缓存或把未发布候选当正式依赖。
真实浏览器验证了初始历史菜单、输入重渲染、历史选择、Enter 发送及清空输入；未启用语音。Node 测试的 Worker/DOM/语音宿主使用 fixture，没有读取现有浏览器密钥或请求付费 TTS；不声称现场语音服务已验收。保留未设置付费凭据时原有提示、mixed JS/CJS SDK 的 Node module-type warning 和 Vite chunk 提示，不通过放宽配置掩盖。COS 仍仅用原 action 内置 verify；公开域名的已知证书问题不通过重复上传或绕过 TLS 处理。

- `data/` 目录存放整理出来的消息数据.
- `main.js` 是 Vite 的 JS 代码入口，业务代码保存在 `calcit.cirru` 中.
- `calcit.cirru` 是项目唯一的 Calcit 源码快照；请使用 Calcit CLI 或编辑器进行结构化修改，不要直接手改生成内容.
- `calcit.cirru` 编译生成的文件会在 `js-out/` 里边.

其他配置还有资源目录, 应该接近平常的 js 项目了.

### License

MIT
