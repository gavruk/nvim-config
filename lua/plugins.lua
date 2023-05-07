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

  use({
    "Mofiqul/vscode.nvim",
    config = function()
        -- support both dark and light style
        vim.o.background = "dark"

        require('vscode').setup({
            -- Alternatively set style in setup
            -- style = 'light'

            -- Enable transparent background
            transparent = true,

            -- Enable italic comment
            italic_comments = true,

            -- Disable nvim-tree background color
            disable_nvimtree_bg = true,

            -- Override colors (see ./lua/vscode/colors.lua)
            color_overrides = {
                vscLineNumber = '#FFFFFF',
            },

            -- Override highlight groups (see ./lua/vscode/theme.lua)
            group_overrides = {
                -- this supports the same val table as vim.api.nvim_set_hl
                -- use colors from this colorscheme by requiring vscode.colors!
                Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
            }
        })
        require('vscode').load()
    end,
  })

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

  use {
	"terrortylor/nvim-comment",
    config = function() require("nvim_comment").setup() end
  }
  require("nvim_comment").setup()

  use('github/copilot.vim')
end)
