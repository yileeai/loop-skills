#!/usr/bin/env bash
# 用法：bash install.sh "你的 Obsidian 库路径"
set -euo pipefail
if [ $# -lt 1 ]; then echo '用法：bash install.sh "你的 Obsidian 库路径"'; exit 1; fi
HERE="$(cd "$(dirname "$0")" && pwd)"
VAULT="$1"
mkdir -p "$VAULT/_claude-skills" "$VAULT/.claude/skills"
# 1) 知识库骨架：只补缺失的文件，已有文件一律不覆盖
cp -Rn "$HERE/vault-template/." "$VAULT/"
# 2) 技能：安装包放 _claude-skills，Claude Code 读取 .claude/skills
cp -R "$HERE/skills/." "$VAULT/_claude-skills/"
cp -R "$HERE/skills/." "$VAULT/.claude/skills/"
echo "完成：9 个技能已安装到 $VAULT"
echo "下一步：打开 CLAUDE.md 和 20-Wiki 知识/主题地图/知识蓝图.md，把「改成你的」换成你自己的内容。"
