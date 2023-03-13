require('plugins')

require('configs/refactoring')
require('configs/mason')
require('configs/lspconfig')
require('configs/cmp')
require('configs/telescope')
require('configs/nvim-tree')
require('configs/nvim-treesitter')
require('configs/monokai-pro')
require('configs/blankline')
require('configs/gitsigns')
require('configs/lualine')
require('configs/luasnip')
require('configs/null-ls')
require('configs/prettier')
require('configs/autopairs')

vim.cmd([[colorscheme monokai-pro]])

vim.mapleader = ","
vim.g.mapleader = ","

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

vim.opt.incsearch = true
vim.opt.hls = true
vim.opt.wrap = false
--vim.opt.nowrap = true
vim.opt.number = true
vim.opt.ruler = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

require('keymaps')
