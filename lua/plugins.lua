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

  use {
    "loctvl842/monokai-pro.nvim",
    config = function()
      require("monokai-pro").setup()
    end
  }

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
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-web-devicons', opt = true }
  }

  use {
    'akinsho/bufferline.nvim', tag = "v3.*", 
    requires = 'nvim-web-devicons'
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


end)
