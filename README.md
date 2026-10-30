## Hestory

> Some history from WeChat

Demo http://r.tiye.me/b-conf/hestory .

### 使用者影响

CLI / `@calcit/procs` 配对正式 **0.32.1**，升级后需重新安装整张依赖图、生成 JS
并完整刷新。使用已发布 Feather **0.5.0**、UI **0.9.0**、Respo **0.17.1**、
JS-FFI **0.2.9**、Memof **0.0.42**，以及 Reel **0.7.0-alpha.5** 和 Markdown
**0.5.0-alpha.5**。两项仍为 alpha，不宣称整图全部稳定，不使用本地候选或 hash。

官方工具转换 19 处旧类型表达式，61 个项目定义 schema 保持。原 OpEnvelope、
历史消息、输入/Enter、语音参数、内联 Worker、HUD 和部署路径不变，不新增持久化、
强转、测试脚本或 compiler proof/fix 规则。刷新仍回到初始空列表。

全部定义、完整 strict（diagnostics 为空）、原十项离线 Node fixture、构建和
immutable 安装通过；Caps strict/toolchain 使用真实已发布图。npm 等待仍为一小时，
无单包例外。此前 0.32.0 候选已验收合成输入/Enter、公开历史菜单和刷新；
本次未重跑浏览器，未启用语音、读取浏览器密钥或调用付费服务。

业务内部使用 Message、Story、Store、Op 和 typed Reel；旧 Cirru/TOML Map 在加载
入口规范化并 decode。OpEnvelope 通过 struct-match 取回同一 Op，不重复解码已受检
消息列表；Respo 通用 UI 状态保留真实开放边界。Memof Anchor 的缺失值为 Option，
本项目不使用 Anchor，但保留实际使用的缓存及受检结果。

讯飞 Worker 保留 Vite `?worker&inline`，避免 HTML/CDN 跨源创建 Worker 白屏。
这不验证部署站点的 CSP，也不改变转码算法或放宽 CSP。原未配置付费凭据提示保留；
Azure 未声明全局与讯飞认证 URL 日志风险仍由
[#33](https://github.com/b-conf/hestory/issues/33)、
[#34](https://github.com/b-conf/hestory/issues/34) 跟踪，不宣称语音网络问题已修复。
缓存合同历史反馈见 [Memof #48](https://github.com/calcit-lang/memof/issues/48)。

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

源码只维护 `calcit.cirru` / `deps.cirru`，旧 compact/package 文件由 CI 禁止回流。
Node 24、Yarn 4.18.0、Caps 0.1.1 用于开发；原全部定义、完整 strict、deprecated
零门禁和十项业务测试保留。本 PR 不合并、发布或部署业务应用。

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

Actions 使用精确正式 tag，接受 tag 可移动风险；只读权限和 HEAD 检查不是 secret
防窃取保证。保留原 mixed JS/CJS SDK 的 Node module-type warning 和 Vite chunk
提示，不通过放宽配置掩盖。原十项回归使用离线 Worker/DOM/语音 fixture，不能据此
宣称真实语音服务验收。COS 仅使用 action 内置 verify，不绕过公共域名 TLS。

- `data/` 目录存放整理出来的消息数据.
- `main.js` 是 Vite 的 JS 代码入口，业务代码保存在 `calcit.cirru` 中.
- `calcit.cirru` 是项目唯一的 Calcit 源码快照；请使用 Calcit CLI 或编辑器进行结构化修改，不要直接手改生成内容.
- `calcit.cirru` 编译生成的文件会在 `js-out/` 里边.

其他配置还有资源目录, 应该接近平常的 js 项目了.

### License

MIT
