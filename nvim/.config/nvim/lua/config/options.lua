-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.g.snacks_animate = false
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.whichwrap:append("<,>,[,],h,l") -- keys allowed to move to the previous/next line when the beginning/end of line is reached
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
