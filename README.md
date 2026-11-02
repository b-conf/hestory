## Hestory

> Some history from WeChat

Demo http://r.tiye.me/b-conf/hestory .

### 使用者影响

CLI / `@calcit/procs` 配对正式 **0.34.0**，Memof 使用已发布 **0.0.44**。
升级后需重新安装依赖、生成 JS 并完整刷新。其他依赖版本保持，Reel
0.7.0-alpha.5 与 Markdown 0.5.0-alpha.5 仍是已有预发布版本；不宣称整张依赖图都已迁移至0.34。

消息空态和开发 Reel 的条件节点改为 Option，再在旧 Respo 0.17.1 的子节点入口
显式恢复其原有 nil 表示。DOM 顺序、消息内容、事件、缓存身份、语音逻辑与 HUD 保持。
这是修复原0.32.1全定义检查发现的隐式 nil 分支，不能将旧基线描述为已通过。
官方带 revision 守卫事务同时规范化17处旧类型形式；61个项目定义的 schema、
附加测试、示例和 FFI 元数据保持，53个定义查询视图完全相同（含2个生成meta定义）。

Message、Story、Store、Op 与 OpEnvelope 已使用具体 Struct/Enum。Cirru/TOML 历史数据
和通用 UI 状态仍在真实输入边界收敛，不用不完整的 union 假称任意扩展字段已闭合。
Memof 共享异构缓存的开放合同保留。本轮不增加强转、迁移脚本或类型预算。

本地正式依赖图通过 Caps strict/toolchain、Yarn immutable、全部定义、完整 strict、
deprecated零门禁、原十项离线Node回归与带CDN路径构建；远端结果以PR检查为准。
本轮不重跑浏览器、不读取真实存档或浏览器密钥、不调用付费语音服务。
原fixture在隔离Node宿主中检查实际页面渲染、输入/Enter、菜单、清空、滚动与语音调用参数。

刷新仍回到初始空列表。讯飞 Worker 保留 Vite `?worker&inline`；
原未配置付费凭据提示保留。Azure 未声明全局与讯飞认证URL日志风险仍由
[#33](https://github.com/b-conf/hestory/issues/33)、
[#34](https://github.com/b-conf/hestory/issues/34) 跟踪，不宣称语音网络问题已修复。
本轮不合并或部署业务应用，仅沿用原工作流上传隔离PR前端预览，上传校验使用COS Action内置verify。

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
