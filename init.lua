require('plugins')

require('configs/refactoring')
require('configs/mason')
require('configs/lspconfig')
require('configs/cmp')
require('configs/telescope')
require('configs/nvim-tree')
require('configs/nvim-treesitter')
--require('configs/blankline')
require('configs/gitsigns')
require('configs/lualine')
require('configs/luasnip')
require('configs/null-ls')
require('configs/prettier')
require('configs/autopairs')
require('configs/colorizer')

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])


vim.mapleader = ","
vim.g.mapleader = ","

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

vim.opt.clipboard = "unnamed,unnamedplus"
vim.opt.fenc = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.autoread = true
vim.opt.incsearch = true
vim.opt.hls = true
vim.opt.wrap = false
vim.opt.number = true
vim.opt.ruler = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true

vim.opt.cpoptions = "aABceFsmq"
--set cpoptions=aABceFsmq
             --|||||||||
             --||||||||+-- When joining lines, leave the cursor between joined lines
             --|||||||+-- When a new match is created (showmatch) pause for .5
             --||||||+-- Set buffer options when entering the buffer
             --|||||+-- :write command updates current file name automatically add <CR> to the last line when using :@r
             --|||+-- Searching continues at the end of the match at the cursor position
             --||+-- A backslash has no special meaning in mappings
             --|+-- :write updates alternative file name
             --+-- :read updates alternative file name
vim.opt.whichwrap = "b,s,h,l,<,>,~,[,]"
--set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
             --| | | | | | | | |
             --| | | | | | | | +-- "]" Insert and Replace
             --| | | | | | | +-- "[" Insert and Replace
             --| | | | | | +-- "~" Normal
             --| | | | | +-- <Right> Normal and Visual
             --| | | | +-- <Left> Normal and Visual
             --| | | +-- "l" Normal and Visual (not recommended)
             --| | +-- "h" Normal and Visual (not recommended)
             --| +-- <Space> Normal and Visual
             --+-- <BS> Normal and Visual

require('keymaps')
