local saga_config = {
  -- 无论什么环境都建议关闭的项（因为你不装 tree-sitter）
  lightbulb = { enable = false },
  symbol_in_winbar = { enable = false },
  outline = { enable = false },
}

if is_tty then
  -- ================= TTY 环境：纯英文、无图标、单边框 =================
  saga_config.ui = {
    title = false,
    border = "single",
    devicon = false,
    code_action = "A", -- 用字母 A 代替灯泡
    expand = "+",
    collapse = "-",
  }
  -- TTY 下 Finder 的方法名保持英文，防止乱码
  saga_config.finder = {
    methods = { ["tyd"] = "Type Def" },
    keys = { toggle_or_open = "<CR>", quit = "q" }
  }
else
  -- ================= 普通环境：全中文、带图标、圆角框 =================
  saga_config.ui = {
    title = true,
    border = "rounded",
    devicon = true,
    code_action = "💡",
    expand = "",
    collapse = "",
  }
  saga_config.finder = {
    methods = { ["tyd"] = "类型定义" },
    keys = { toggle_or_open = "<CR>", quit = "q" }
  }
  -- 其它汉化项...
  saga_config.rename = { quit = "<C-c>", exec = "<CR>" }
end

require('lspsaga').setup(saga_config)
