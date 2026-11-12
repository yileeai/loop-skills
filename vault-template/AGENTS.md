# AGENTS.md

本库的完整规则写在 `CLAUDE.md`。无论你是哪个模型（Claude、GPT、Codex 等），开始任何任务前先完整阅读 `CLAUDE.md` 并遵守。

## 指令怎么执行

主人输入下面的指令时，打开对应的技能文件，按里面的步骤执行：

| 指令 | 技能文件 |
|---|---|
| `/ingest` | `_claude-skills/ingest/SKILL.md` |
| `/query` | `_claude-skills/query/SKILL.md` |
| `/lint` | `_claude-skills/lint/SKILL.md` |
| `/checkup` | `_claude-skills/checkup/SKILL.md` |
| `/replay` | `_claude-skills/replay/SKILL.md` |
| `/content` | `_claude-skills/content/SKILL.md` |
| `/loopback` | `_claude-skills/loopback/SKILL.md` |
| `/diagram-design`（画图解 / 知识可视化） | `_claude-skills/diagram-design/SKILL.md` |

如果 `.claude/skills/` 下已有同名技能，两者内容相同，以 `_claude-skills/` 为准。

主人用自然语言提出同类请求时（如"把这篇收进知识库""复盘一下今天的咨询"），也按对应技能文件执行。
