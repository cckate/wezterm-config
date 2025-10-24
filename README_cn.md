<div align="center">

[中文](./README_cn.md) | [English](./README_en.md)

</div>

# WezTerm 配置

一个优化美观、效率和 WSL 集成的 WezTerm 配置文件。

## 功能特性

### 🎨 外观
- **配色方案**: 使用 `Campbell` 主题，并覆盖为深灰背景 (`#0C0C0C`)。
- **字体**:
  - 主力: `Rec Mono Casual` (代码/文本)
  - 备选: `0xProto Nerd Font Mono` (图标/符号)
- **窗口**: 内边距 (左右15px，上下10px)，隐藏原生标题栏。
- **标签页**: 始终显示 (即使只有一个)，最大宽度32字符。

### 🚀 工作流
- **默认终端**: 自动启动 WSL (Ubuntu 24.04) 并进入家目录。
- **快捷键**:
  - `Ctrl+Shift+W`: 关闭面板/标签页
  - `Ctrl+Shift+T`: 新建标签页
  - `Ctrl+Tab` / `Ctrl+Shift+Tab`: 切换标签页
  - `Ctrl+C`: 复制到剪贴板
  - `Ctrl+V`: 粘贴
  - `Ctrl+Shift+C`: 发送中断信号 (替代原`Ctrl+C`)

### ⚙️ 技术细节
- **字体大小**: 13磅
- **透明度**: 完全不透明 (`opacity = 1.0`)
- **无关闭确认**: 禁用退出提示。

## 依赖要求
- WezTerm ≥ 20240608 (推荐)
- WSL (本配置使用 Ubuntu 24.04)
- 字体: 需安装 `Rec Mono Casual` 和 `0xProto Nerd Font Mono`。

## 自定义建议
1. 修改 `default_prog` 更换默认终端 (如 PowerShell、`bash`)。
2. 替换 `primary_font`/`fallback_font` 中的字体。
3. 更多配色方案: [WezTerm 主题库](https://wezfurlong.org/wezterm/colorschemes/index.html)。

