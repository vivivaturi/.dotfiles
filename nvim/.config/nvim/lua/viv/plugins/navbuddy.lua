local nav_setup, nav = pcall(require, "nvim-navbuddy")
if not nav_setup then
	return
end

local nav_actions_setup, actions = pcall(require, "nvim-navbuddy.actions")
if not nav_actions_setup then
	return
end

local navic_setup, navic = pcall(require, "nvim-navic")
if not navic_setup then
	return
end

nav.setup({})
