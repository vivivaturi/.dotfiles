local status_ok, treesitter = pcall(require, "nvim-treesitter")
if not status_ok then
	return
end

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	auto_install = true,
	ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python", "vim", "typescript" }, -- put the language you want in this array
	-- ensure_installed = "all", -- one of "all" or a list of languages
	ignore_install = { "" }, -- List of parsers to ignore installing
	sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)

	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },

	context_commentstring = {
		enable = true,
		enable_autocmd = false,
	},

	autotag = {
		enable = true,
	},
})

local status_autotag, autotag = pcall(require, "nvim-ts-autotag")
if not status_autotag then
	return
end

autotag.setup({})

local status_autopairs, autopairs = pcall(require, "nvim-autopairs")
if not status_autopairs then
	return
end

autopairs.setup({
	disable_filetype = { "TelescopePrompt", "vim" },
})

local status_context, context = pcall(require, "context_commentstring")
if not status_context then
	return
end

context.setup({})
