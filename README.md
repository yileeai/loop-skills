# LOOP Skills · AI 咨询师的「根据地」

> 作者：[易里 Yilee](https://github.com/yileeai) · AI 咨询师 · LOOP AI 获客

把碎片素材编译成会生长的知识库，再用它**诊断客户、复盘咨询、生产获客内容**。
一套 Claude Code 技能 + 一个 Obsidian 知识库骨架，从一位 AI 咨询师的真实工作里长出来。

> 方法来源：Karpathy 的 LLM Wiki（raw → wiki 编译）× Ideaverse 的 ACE 框架（知识 / 时间 / 行动）。

## 它怎么转起来

```
素材 ──/ingest──▶ 知识 ──/checkup──▶ 诊断报告 ─┐
  ▲                 │                        │
  │                 ├──/content──▶ 获客内容 ──┤
  │                 └──/query───▶ 回答       │
  │                                          ▼
客户沟通 ──/replay──▶ 咨询记录 + 脱敏知识    定稿成果 ──/loopback──▶ 回到知识
```

输出也是原料：每一份诊断、每一条内容定稿后都回流成观点、打法、案例，库越用越厚。

## 8 个技能

| 指令 | 你交给它 | 它替你完成 |
|---|---|---|
| `/ingest` | 文章剪藏、报告、视频转录、你的逐字稿 | 编译成素材摘要 + 概念 / 工具 / 行业 / 问题页，互相双链，归档原文 |
| `/query` | 一个问题 | 只基于你的库回答，每句标出处；库里没有就明说 |
| `/lint` | 什么都不用给 | 体检：死链、孤岛页、未登记页、知识冲突、素材积压、逾期客户、隐私泄露 |
| `/checkup` | 客户名 | 一份 AI 落地诊断报告：机会清单、获客诊断、30 天试点方案 |
| `/replay` | 咨询录音转写或聊天记录 | 咨询记录 + 更新客户档案 + 脱敏沉淀问题 / 案例 / 观点 |
| `/loopback` | 一份定稿成果 | 列出可回流的观点、打法、方法，你勾选后写回知识库 |
| `/content` | 一个主题，或「从问题库选」 | 按你的获客内容结构写小红书 / 视频号 / 公众号，配 AI 画面提示词 |
| `/diagram-design` | 要画的东西 | 45 种品牌图解（循环图、四象限、漏斗、流程图……），输出 HTML + PNG |

> 想把 `/content` 写好的脚本直接做成短视频？视频技能单独放在 [loop-video](https://github.com/yileeai/loop-video)：出镜口播动效，后续加不出镜、数字人。

几条贯穿所有技能的规矩：

- **素材只读**：原始资料不改一个字，编译完原样归档。
- **观点只用你的原话**：AI 可以追问「你怎么看」，不替你编观点。
- **客户隐私是红线**：真实客户信息只留在客户档案和咨询记录里，进知识库一律脱敏。
- **先列候选，你确认再写**：回流、主人原稿编译都先给清单让你勾选。

## 安装

需要：[Claude Code](https://claude.com/claude-code)（或在 Obsidian 里用 Claudian 插件）、[Obsidian](https://obsidian.md)。

```bash
git clone https://github.com/yileeai/loop-skills.git
```

Windows：

```bat
loop-skills\install.bat "D:\Obsidian\根据地"
```

macOS / Linux：

```bash
bash loop-skills/install.sh ~/Obsidian/根据地
```

安装脚本做两件事：

1. 把 `vault-template/` 的目录骨架、模板、地图页补进你的库，**已有文件一律不覆盖**。
2. 把 8 个技能复制到库里的 `_claude-skills/`（安装包）和 `.claude/skills/`（Claude Code 读取）。

## 装好后先做三件事

1. **改 `CLAUDE.md` 第 1 节**：你是谁、帮谁解决什么问题、主攻哪几个行业。
2. **改 `20-Wiki 知识/主题地图/知识蓝图.md`**：把「行业 × 业务环节」矩阵换成你的行业。这张图决定库往哪长。
3. **改 `90-System 系统/LOOP品牌手册.md`**：换成你的品牌名、强调色和固定口播（文件名保持不变）。

然后丢一篇文章进 `10-Raw 原料/01-文章剪藏/`，在库目录里打开 Claude Code，输入 `/ingest`。

## 目录

```
loop-skills/
├── skills/            8 个技能
└── vault-template/    知识库骨架（目录说明、模板、地图页、CLAUDE.md、AGENTS.md）
```

`AGENTS.md` 让 Codex 等其他 Agent 也能按同一套技能文件工作。

## 许可

本仓库的技能与模板采用 [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh-hans)，全文见 [LICENSE](LICENSE)：

- ✅ 可以免费学习、使用，按自己的行业随意修改；
- ✅ 转载或分享改编版时，注明出处「易里 Yilee · LOOP」并附本仓库链接；
- ❌ 不得商用：不能打包售卖，也不能放进付费课程、付费社群或付费咨询交付；
- 🔁 改编后公开的版本，也必须用同样的协议。

**商业合作或授权**：欢迎联系 [易里 Yilee](https://github.com/yileeai)。

例外：`skills/diagram-design` 改编自 [cathrynlavery/diagram-design](https://github.com/cathrynlavery/diagram-design)，沿用原 MIT 许可，改动说明见 [NOTICE](skills/diagram-design/NOTICE.md)。
