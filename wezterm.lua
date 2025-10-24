-- 引入 wezerm 的功能库，这是必须的第一步
local wezterm = require 'wezterm'

-- 创建一个空的配置表（table），之后我们会往里面添加所有设置
local config = {}

-- 设置默认启动的程序为 wsl.exe
config.default_prog = { 'wsl.exe', '-d', 'Ubuntu-24.04', '--cd', '~' }

-- || -- 字体配置 -- ||

-- 请在这里替换成你自己的字体名称
local primary_font = 'Rec Mono Casual'
local fallback_font = '0xProto Nerd Font Mono'

config.font = wezterm.font_with_fallback({
  -- 主力字体，用于代码和日常文本
  primary_font,

  -- 回退字体，专门用于显示 Nerd Font 图标和符号
  fallback_font,
})

-- 设置字体大小
config.font_size = 13

-- || -- 字体配置结束 -- || 



-- || -- 窗口样式与外观 -- ||

-- 【美化】设置一个色彩饱满的颜色主题
-- 你可以从这里找到并替换成其他你喜欢的主题: https://wezfurlong.org/wezterm/colorschemes/index.html
config.color_scheme = 'Campbell'

-- 【新增】覆盖当前主题的背景颜色，让它变成深灰色
config.colors = {
  background = '#0C0C0C',
}

-- 【美化】设置窗口背景透明度 (0.0 完全透明, 1.0 完全不透明)
config.window_background_opacity = 1.0

-- 【美化】设置窗口内边距，让文字有呼吸空间
config.window_padding = {
  left = 15,
  right = 15,
  top = 10,
  bottom = 10,
}

-- 禁用关闭窗口时的确认提示
config.window_close_confirmation = 'NeverPrompt'

-- 移除原生标题栏，让标签栏充当标题栏
config.window_decorations = 'RESIZE'

-- 即使只有一个标签页，也始终显示标签栏，方便拖动窗口
config.hide_tab_bar_if_only_one_tab = false

-- 调整标签页的最大宽度，以便显示更长的标题
config.tab_max_width = 32

-- 确保标签栏是启用的，这是绘制控制按钮的基础
config.enable_tab_bar = true

-- || -- 窗口样式与外观配置完毕 -- ||


-- -- || -- 快捷键设置 (Keybindings) -- ||

-- 启用 WezTerm 内置的默认链接检测规则
-- 这能自动识别 http, https, ftp, mailto, file 等多种格式
config.hyperlink_rules = wezterm.default_hyperlink_rules()

config.keys = {
  -- 当按下 CTRL 键并单击鼠标左键时
  {
    -- 事件：鼠标左键单击一次并释放
    event = { Up = { streak = 1, button = 'Left' } },
    -- 执行的动作：打开当前鼠标光标下的链接
    action = wezterm.action.OpenLinkAtMouseCursor,
  },
  -- 定义一个快捷键来关闭当前的窗格(Pane)或标签页(Tab)
  -- 我们将它绑定到 CTRL+W
  {
    key = 'w',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
    -- 【新增】使用 CTRL+T 新建标签页
  {
    key = 't',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SpawnTab 'CurrentPaneDomain',
  },

  -- 【新增】使用 CTRL+Tab 向前切换标签页
  {
    key = 'Tab',
    mods = 'CTRL',
    action = wezterm.action.ActivateTabRelative(1),
  },

  -- 【新增】使用 CTRL+SHIFT+Tab 向后切换标签页
  {
    key = 'Tab',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivateTabRelative(-1),
  },

  -- {
  --  key = 'c',
  --   mods = 'CTRL|SHIFT',
  --   action = wezterm.action.CopyTo 'Clipboard',
  -- },
  -- 【自定义】将 CTRL+C 设置为“复制”
  -- DisableDefaultAssignment 告诉 WezTerm: “我知道这是个特殊按键，
  -- 我就是要覆盖它，不要执行它的默认终端功能。”
  {
    key = 'c',
    mods = 'CTRL',
    action = wezterm.action.Multiple {
      wezterm.action.CopyTo 'Clipboard',
      wezterm.action.ClearSelection,
    },
  },

  -- 【新增】从剪贴板粘贴文本
  {
    key = 'v',
    mods = 'CTRL',
    action = wezterm.action.PasteFrom 'Clipboard',
  },

  -- 【自定义】将 CTRL+SHIFT+C 设置为新的“强制中断”信号
  -- "\x03" 是 Ctrl+C 在终端里实际发送的控制代码 (称为 ETX)
  {
    key = 'c',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.SendString '\x03',
  },
}
-- -- || -- 快捷键设置 (Keybindings) 配置完毕 -- ||

-- 在文件的最末尾，必须返回这个 config 表，WezTerm 才会应用它
return config
