-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use "williamboman/mason.nvim"

  use {
    "neovim/nvim-lspconfig",
  }

  use 'nvim-tree/nvim-web-devicons'

  use { "ellisonleao/gruvbox.nvim" }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use 'NvChad/nvim-colorizer.lua'

  use "lukas-reineke/indent-blankline.nvim"

  use {
    'lewis6991/gitsigns.nvim',
  }

  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {
    } end
  }

  use {
    "hrsh7th/nvim-cmp",
     requires = {
       'hrsh7th/cmp-nvim-lsp',
       'hrsh7th/cmp-buffer',
       'hrsh7th/cmp-path',
       'hrsh7th/cmp-cmdline',
       'hrsh7th/cmp-nvim-lua',
       'L3MON4D3/LuaSnip', 
       'saadparwaiz1/cmp_luasnip',
       'rafamadriz/friendly-snippets'
     }
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-web-devicons', opt = true }
  }

  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      {"nvim-lua/plenary.nvim"},
      {"nvim-treesitter/nvim-treesitter"}
    }
  }

  use {
	"terrortylor/nvim-comment",
    config = function() require("nvim_comment").setup() end
  }
  require("nvim_comment").setup()

  use 'roobert/action-hints.nvim'
  require("action-hints").setup()

  use({
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    after = "nvim-web-devicons", -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup()
    end,
  })

  
  use 'nanozuki/tabby.nvim'

  use {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- config
      }
    end,
    requires = {'nvim-tree/nvim-web-devicons'}
  }

  use 'ggandor/leap.nvim'
  require('leap').create_default_mappings()

end)
