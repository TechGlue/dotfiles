vim.cmd([[packadd packer.nvim]])
return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	use({ "HoNamDuong/hybrid.nvim" })
	-- Colorschemes
	use({ "nyoom-engineering/oxocarbon.nvim" })
	use("rebelot/kanagawa.nvim")
	use("EdenEast/nightfox.nvim")
	use("ellisonleao/gruvbox.nvim")
	use("kien/ctrlp.vim")
	use({ "Biscuit-Colorscheme/nvim" })
	use({ "craftzdog/solarized-osaka.nvim" })

	use("ajmwagar/vim-deus")
	use("nvim-treesitter/nvim-treesitter")
	use("VonHeikemen/lsp-zero.nvim")
	use({ "neovim/nvim-lspconfig" }) -- Required
	use({ "williamboman/mason.nvim" }) -- Optional
	use({ "williamboman/mason-lspconfig.nvim" }) -- Optional
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- misc
	use({ "nvim-tree/nvim-web-devicons" })
	use({ "romgrk/barbar.nvim", requires = "nvim-web-devicons" })
	use({ "p00f/nvim-ts-rainbow" })

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- Autocompletion
	use({ "hrsh7th/nvim-cmp" }) -- Required
	use({ "hrsh7th/cmp-nvim-lsp" }) -- Required
	use({ "hrsh7th/cmp-buffer" }) -- Optional
	use({ "hrsh7th/cmp-path" }) -- Optional
	use({ "saadparwaiz1/cmp_luasnip" }) -- Optional
	use({ "hrsh7th/cmp-nvim-lua" }) -- Optional
	use("mbbill/undotree")
	use({
		"nvimdev/guard.nvim",
		-- Builtin configuration, optional
		requires = {
			"nvimdev/guard-collection",
		},
	})

	-- Snippets
	use({ "L3MON4D3/LuaSnip" }) -- Required
	use({ "rafamadriz/friendly-snippets" }) -- Optional
	use({ "github/copilot.vim" })

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	-- Lua
	use({
		"folke/zen-mode.nvim",
		config = function()
			require("zen-mode").setup({})
		end,
	})
	use("MunifTanjim/prettier.nvim")
end)
