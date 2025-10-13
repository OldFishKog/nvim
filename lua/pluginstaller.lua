local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

--在此处添加插件仓库

Plug 'sbdchd/neoformat'  --格式化

Plug 'lukas-reineke/indent-blankline.nvim' --缩进高亮

Plug 'nvim-tree/nvim-tree.lua' --文件浏览

Plug 'Kicamon/im-switch.nvim' --输入法自动切换

Plug 'neovim/nvim-lspconfig'  --cmp自动补全系列
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'windwp/nvim-autopairs' --括号补全

Plug 'folke/trouble.nvim' --信息显示

Plug 'morhetz/gruvbox' --皮肤

--结束

vim.call('plug#end')
vim.cmd('silent! colorscheme seoul256')
