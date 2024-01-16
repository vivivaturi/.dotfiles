-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

keymap("n", "<S-q>", ":bd<CR>", opts)
keymap("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
keymap("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})

-- Quit Current Buffer
keymap("n", "<leader>q", ":q<CR>")

-- Write Current Buffer
keymap("n", "<leader>w", ":w<CR>")

-- Keep curson in the middle when jumping
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Keep search terms in the middle of the page
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Yank into clipboard
keymap({ "n", "v" }, "<leader>y", [["+y]], opts)
keymap("n", "<leader>Y", [["+Y]], opts)

-- Deletes without saving into register
keymap({ "n", "v" }, "<leader>d", [["_d]], opts)
keymap("n", "<leader>x", '"_x')

-- Move lines in visual mode
keymap("v", "K", ":m-2<CR>gv=gv", opts)
keymap("v", "J", ":m'>+<CR>gv=gv", opts)

-- When using J, keep cursor in current position
keymap("n", "J", "mzJ`z", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)
