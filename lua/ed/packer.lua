-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or, branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- colours --
   use ({ 
       "savq/melange-nvim",
       as = "melange",
  })

  use ({
      "ellisonleao/gruvbox.nvim",
      as = "gruvbox"
  })

  use ({
      "sainnhe/gruvbox-material",
      as = "gruvbox-material",
  })

  -- autopairs --
  use {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
    end
  }

  -- indent break lines --
  use ({ 
    "lukas-reineke/indent-blankline.nvim",
    as = "ibl",
  })

  use ( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})	
  use ( 'mbbill/undotree')
  use ( 'tpope/vim-fugitive')
  -- LSP stuff --
  use ( 'neovim/nvim-lspconfig')
  use ( 'williamboman/mason.nvim')
  use ( 'williamboman/mason-lspconfig.nvim')
  -- Autocomplete
  use ( 'hrsh7th/nvim-cmp')
  use ( 'hrsh7th/cmp-nvim-lsp')
  use ( 'hrsh7th/cmp-buffer')
  use ( 'hrsh7th/cmp-path')
  use ( 'saadparwaiz1/cmp_luasnip')
  -- Snippets
  use ( 'L3MON4D3/LuaSnip')
  use ( 'rafamadriz/friendly-snippets')
end)
