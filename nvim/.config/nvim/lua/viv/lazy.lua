local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
	-- General quality of life plugins
	"nvim-lua/plenary.nvim",
	"kyazdani42/nvim-web-devicons",
	"christoomey/vim-tmux-navigator",
	"szw/vim-maximizer",
	"numToStr/Comment.nvim",
	"kyazdani42/nvim-tree.lua",
	"lewis6991/impatient.nvim",
	"lukas-reineke/indent-blankline.nvim",
	"gelguy/wilder.nvim",
	"ahmedkhalf/project.nvim",
	"lewis6991/gitsigns.nvim",

	-- Colorscheme
	"rebelot/kanagawa.nvim",
	"EdenEast/nightfox.nvim",

	-- LSP
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{
				"SmiteshP/nvim-navbuddy",
				dependencies = {
					"SmiteshP/nvim-navic",
					"MunifTanjim/nui.nvim",
				},
				opts = { lsp = { auto_attach = true } },
			},
		},
	},
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"jose-elias-alvarez/null-ls.nvim", -- for formatters and linters
	"RRethy/vim-illuminate",
	"glepnir/lspsaga.nvim",

	-- Tree sitter plugins
	"nvim-treesitter/nvim-treesitter",
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",
	"JoosepAlviste/nvim-ts-context-commentstring",
	"moll/vim-bbye",

	-- Cmp plugins
	"hrsh7th/nvim-cmp", -- The completion plugin
	"hrsh7th/cmp-buffer", -- buffer completions
	"hrsh7th/cmp-path", -- path completions
	"saadparwaiz1/cmp_luasnip", -- snippet completions
	"hrsh7th/cmp-nvim-lsp",

	-- Snippets
	"L3MON4D3/LuaSnip",
	"rafamadriz/friendly-snippets",

	-- Line Diagostics
	"folke/trouble.nvim",

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim", "debugloop/telescope-undo.nvim" },
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
	},
	-- Lualine
	"nvim-lualine/lualine.nvim",

	-- Bufferline
	"akinsho/bufferline.nvim",
	"tiagovla/scope.nvim",

	-- Aerial
	{
		"stevearc/aerial.nvim",
		opts = {},
		-- Optional dependencies
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"kyazdani42/nvim-web-devicons",
		},
	},

	-- Fugitive
	"tpope/vim-fugitive",

	-- DAP
	"mfussenegger/nvim-dap",
	{ "rcarriga/nvim-dap-ui", dependencies = "mfussenegger/nvim-dap" },
	"theHamsta/nvim-dap-virtual-text",
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
		dependencies = {
			"mfussenegger/nvim-dap",
			"rcarriga/nvim-dap-ui",
		},
	},
	"folke/zen-mode.nvim",
}

local opts = {}

require("lazy").setup(plugins, opts)
