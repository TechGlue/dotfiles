vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
 -- Colorschemes
  use {'nyoom-engineering/oxocarbon.nvim'}
  use "rebelot/kanagawa.nvim"
  use "EdenEast/nightfox.nvim"
  use "ellisonleao/gruvbox.nvim"
  use 'kien/ctrlp.vim'

  use 'ajmwagar/vim-deus'
  use 'nvim-treesitter/nvim-treesitter'
  use 'VonHeikemen/lsp-zero.nvim'
  use {'neovim/nvim-lspconfig'}             -- Required
  use {'williamboman/mason.nvim'}           -- Optional
  use {'williamboman/mason-lspconfig.nvim'} -- Optional
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	require("toggleterm").setup()
  end}
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

-- misc
  use 'nvim-tree/nvim-web-devicons'
  use {'romgrk/barbar.nvim', requires = 'nvim-web-devicons'}

-- Autocompletion
  use {'hrsh7th/nvim-cmp'}         -- Required
  use {'hrsh7th/cmp-nvim-lsp'}     -- Required
  use {'hrsh7th/cmp-buffer'}       -- Optional
  use {'hrsh7th/cmp-path'}         -- Optional
  use {'saadparwaiz1/cmp_luasnip'} -- Optional
  use {'hrsh7th/cmp-nvim-lua'}     -- Optional
  use 'mbbill/undotree'

-- Snippets
  use {'L3MON4D3/LuaSnip'}             -- Required
  use {'rafamadriz/friendly-snippets'} -- Optional
  use {'github/copilot.vim'}

  -- Lua
  use {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
      }
    end
  }
  use('MunifTanjim/prettier.nvim')
end)






