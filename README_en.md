<div align="center">

[中文](#中文版) | [English](#english-version)

</div>

# WezTerm Configuration

A customized WezTerm configuration for improved aesthetics, productivity, and WSL integration.

## Features

### 🎨 Appearance
- **Color Scheme**: Uses the `Campbell` theme with a custom dark gray background (`#0C0C0C`).
- **Font**:
  - Primary: `Rec Mono Casual` (coding/readability)
  - Fallback: `0xProto Nerd Font Mono` (icons/symbols)
- **Window**: Padding (15px sides, 10px top/bottom) and removed native titlebar.
- **Tabs**: Always visible (even with single tab), max width 32 chars.

### 🚀 Workflow
- **Default Shell**: Auto-launches WSL (Ubuntu 24.04) in home directory.
- **Keybindings**:
  - `Ctrl+Shift+W`: Close pane/tab
  - `Ctrl+Shift+T`: New tab
  - `Ctrl+Tab` / `Ctrl+Shift+Tab`: Tab navigation
  - `Ctrl+C`: Copy to clipboard
  - `Ctrl+V`: Paste
  - `Ctrl+Shift+C`: Send SIGINT (alternative to `Ctrl+C`)

### ⚙️ Technical
- **Font Size**: 13pt
- **Transparency**: Fully opaque (`opacity = 1.0`)
- **No close confirmation**: Disables exit prompts.

## Requirements
- WezTerm ≥ 20240608 (recommended)
- WSL (Ubuntu 24.04 in this config)
- Fonts: Install both `Rec Mono Casual` and `0xProto Nerd Font Mono`.

## Customization
1. Change `default_prog` to your preferred shell (e.g., PowerShell, `bash`).
2. Replace fonts in `primary_font`/`fallback_font`.
3. Explore other color schemes: [WezTerm Colors](https://wezfurlong.org/wezterm/colorschemes/index.html).


