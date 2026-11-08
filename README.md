## Hestory

> Some history from WeChat

Demo http://r.tiye.me/b-conf/hestory .

### 使用者影响

CLI / `@calcit/procs` 配对正式 **0.38.0**，使用 Respo **0.19.5**、Reel **0.10.0**、UI **0.15.2**、Markdown **0.8.2**、Feather **0.6.3**、JS-FFI **0.2.13**、Memof **0.0.47** 和传递 Router **0.12.2**。升级后重新安装依赖、生成 JS 并完整刷新。

组件游标使用 Respo 的 `CoordKey`，由 Tag、字符串和数字组成。业务事件和 Reel 控制通过具名 union 进入应用派发。回复草稿读取为字符串，侧栏状态读取为字符串或布尔值；语音文本清洗使用字符串替换或具名函数签名。历史消息仍通过原 Cirru/TOML 解码入口。

六处 DOM 回调标注真实 `RespoEvent`，输入和键盘事件直接读取已声明字段，再保留原字符串 / 宿主校验；消息空态和开发 Reel 直接返回 Option 子节点，不再恢复 nil。七处间距改用 `space-x` / `space-y`，根渲染加入现代 Respo memo 生命周期。两个宿主回调显式丢弃不使用的 JS 返回值，返回 Unit；不扩大回调返回类型。

Message、Story、Store、Op 与 OpEnvelope 已使用具体 Struct/Enum，业务模型和 updater 保持。Cirru/TOML 历史数据、通用 UI 状态和 Memof 异构缓存仍在真实开放边界处理，不用不完整 union 假称任意扩展字段已闭合。Feather 在颜色边界使用真实标量 union；本项目不增加强转、迁移脚本、类型预算或新测试入口。

原十项离线 Node 业务回归保留全部断言，事件夹具改用 Respo 自身转换器产生真实事件。实际隔离 Chrome 验证中文/emoji 回复、Enter 发送与清空、菜单、刷新回到初始空列表；没有启用语音或操作系统剪贴板。离线语音 fixture 不代表真实语音网络验收，讯飞 Worker 保持 Vite `?worker&inline`，原未配置付费凭据提示保留。Azure 未声明全局与讯飞认证URL日志风险仍由 [#33](https://github.com/b-conf/hestory/issues/33)、[#34](https://github.com/b-conf/hestory/issues/34) 跟踪。

原 HUD、语音模式、存储键、字体和服务器路径保持。本轮不合并或部署业务应用，仅沿用原工作流上传隔离 PR 前端预览；COS 校验只用 action 内置 verify。远端结果以 PR 检查为准，源码版本号不代表正式 tag 已发布。

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
