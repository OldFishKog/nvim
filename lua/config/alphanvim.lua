local status_ok, alpha = pcall(require, "alpha")
if not status_ok then return end

local dashboard = require("alpha.themes.dashboard")

-- 1. 汉化 Header (Logo 下方的文字)
dashboard.section.header.val = {
    "  _   _                 _ ",
    " | \\ | |               (_)",
    " |  \\| | ___  _____   ___ _ __ ___ ",
    " | . ` |/ _ \\/ _ \\ \\ / / | '_ ` _ \\",
    " | |\\  |  __/ (_) \\ V /| | | | | | |",
    " |_| \\_|\\___|\\___/ \\_/ |_|_| |_| |_|",
    "                                    ",
    "       欢迎使用极简中文化配置       ",
}

-- 2. 汉化快捷按钮文本
dashboard.section.buttons.val = {
    dashboard.button("f", "    查找文件", ":Telescope find_files <CR>"),
    dashboard.button("e", "  新建文件", ":ene <BAR> startinsert <CR>"),
    dashboard.button("r", "    最近文件", ":Telescope oldfiles <CR>"),
    dashboard.button("p", "    搜索项目", ":Telescope projects <CR>"),
    dashboard.button("c", "  打开配置", ":e $MYVIMRC <CR>"),
    dashboard.button("q", "    退出程序", ":qa<CR>"),
}

-- 3. 汉化页脚 (Footer)
-- 这里可以显示安装了多少插件，或者显示一句中文诗词
dashboard.section.footer.val = "愿代码运行无虫 (Bug Free)"

-- 应用配置
alpha.setup(dashboard.config)
