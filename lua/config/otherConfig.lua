--otherConfig.lua--
vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.background = 'light'
vim.cmd.colorscheme('gruvbox')
vim.o.winborder = "rounded"
vim.opt.showmode = false

if is_tty then
    vim.opt.helplang = 'en' -- TTY 建议看英文文档，防止中文乱码显示为方块
else
    vim.opt.helplang = 'cn'
end

---neovide字体调整
if vim.g.neovide then
    vim.keymap.set({ "n", "v" }, "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
    vim.keymap.set({ "n", "v" }, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
    vim.keymap.set({ "n", "v" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")
end

--neovide代码操作
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'LSP Code Actions' })
vim.keymap.set('v', '<leader>ca', vim.lsp.buf.code_action, { desc = 'LSP Code Actions' })
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
vim.keymap.set("n","gi",vim.lsp.buf.implementation,{})
