local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end
-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
	git = {
		clone_timeout = 300, -- Timeout, in seconds, for git clones
	},
})
-- Install your plugins here return packer.startup(function(use)
-- My plugins here
return packer.startup(function(use)
	-- Essential Plugins
	use({ "wbthomason/packer.nvim" })
	use({ "nvim-lua/plenary.nvim" })
	use({ "kyazdani42/nvim-web-devicons" })
	use({ "christoomey/vim-tmux-navigator" })
	use({ "szw/vim-maximizer" })
	use({ "numToStr/Comment.nvim" })
	use({ "kyazdani42/nvim-tree.lua" })
	use({ "windwp/nvim-autopairs" })
	use({ "lewis6991/impatient.nvim" })
	use({ "lukas-reineke/indent-blankline.nvim" })
	use({ "gelguy/wilder.nvim" })
	use({ "ahmedkhalf/project.nvim" })
	use({ "JoosepAlviste/nvim-ts-context-commentstring" })
	use({ "moll/vim-bbye" })

	-- cmp plugins
	use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
	use({ "hrsh7th/cmp-buffer" }) -- buffer completions
	use({ "hrsh7th/cmp-path" }) -- path completions
	use({ "saadparwaiz1/cmp_luasnip" }) -- snippet completions
	use({ "hrsh7th/cmp-nvim-lsp" })
	use({ "hrsh7th/cmp-nvim-lua" })

	-- snippets
	use({ "L3MON4D3/LuaSnip" }) --snippet engine
	use({ "rafamadriz/friendly-snippets" }) -- a bunch of snippets to use

	-- LSP
	use({ "neovim/nvim-lspconfig" }) -- enable LSP
	use({ "williamboman/mason.nvim" })
	use({ "williamboman/mason-lspconfig.nvim" })
	use({ "jose-elias-alvarez/null-ls.nvim" }) -- for formatters and linters
	use({ "RRethy/vim-illuminate" })
	use({ "glepnir/lspsaga.nvim" })

	-- Line diagnostics
	use({ "folke/trouble.nvim" })

	-- Telescope
	use({ "nvim-telescope/telescope.nvim" })
	use({
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
	})

	-- Git
	use({ "lewis6991/gitsigns.nvim" })

	-- DAP
	use({ "mfussenegger/nvim-dap" })
	use({ "rcarriga/nvim-dap-ui" })
	use({ "ravenxrz/DAPInstall.nvim" })

	-- Colorscheme
	-- use({ "navarasu/onedark.nvim" })
	use({ "EdenEast/nightfox.nvim" })
	use({ "rebelot/kanagawa.nvim" })

	-- Nav-buddy
	use({
		"SmiteshP/nvim-navbuddy",
		requires = {
			"neovim/nvim-lspconfig",
			"SmiteshP/nvim-navic",
			"MunifTanjim/nui.nvim",
		},
	})

	-- Zen-Mode
	use({
		"folke/zen-mode.nvim",
		config = function()
			require("zen-mode").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})

	-- Aerial
	use({ "stevearc/aerial.nvim" })

	-- Lualine
	use({ "nvim-lualine/lualine.nvim" })

	-- Bufferline
	use({ "akinsho/bufferline.nvim" })

	-- Scope for bufferline
	use({ "tiagovla/scope.nvim" })

	-- Undotree
	use({
		"mbbill/undotree",
		cmd = { "UndotreeToggle", "UndotreeFocus" },
	})
	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
