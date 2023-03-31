-- Essential Keymappings
-- Vivek Ivaturi
--
-- Modes normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<M-Up>", ":resize +3<CR>", opts)
keymap("n", "<M-Down>", ":resize -3<CR>", opts)
keymap("n", "<M-Left>", ":vertical resize +3<CR>", opts)
keymap("n", "<M-Right>", ":vertical resize -3<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-q>", ":Bd<CR>", opts)
keymap("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
keymap("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})

-- Clear highlights
keymap("n", "<leader>nh", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Buffer commands
-- Quit Current Buffer
keymap("n", "<leader>q", ":q<CR>")

-- Write Current Buffer
keymap("n", "<leader>w", ":w<CR>")

-- Close Current Buffer
keymap("n", "<leader>c", ":bd<CR>")

-- Keep curson in the middle when jumping
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Keep search terms in the middle of the page
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Yank into clipboard keymap({ "n", "v" }, "<leader>y", [["+y]], opts) keymap("n", "<leader>Y", [["+Y]], opts)

-- Deletes without saving into register
keymap({ "n", "v" }, "<leader>d", [["_d]], opts)

-- Move lines in visual mode
keymap("v", "K", ":m-2<CR>gv=gv", opts)
keymap("v", "J", ":m'>+<CR>gv=gv", opts)

-- When using J, keep cursor in current position
keymap("n", "J", "mzJ`z", opts)

-- Increment and Decrement numbers
keymap("n", "<leader>+", "<C-a>", opts)
keymap("n", "<leader>-", "<C-x>", opts)

-- Window manipulations
keymap("n", "<leader>sv", "<C-w>v", opts) -- split window vertically
keymap("n", "<leader>sh", "<C-w>s", opts) -- split window horizontally
keymap("n", "<leader>se", "<C-w>=", opts) -- set windows equally
keymap("n", "<leader>sx", ":close<CR>", opts) -- close current window

keymap("n", "<leader>to", ":tabnew<CR>", opts) -- opens new tab
keymap("n", "<leader>tx", ":bd<CR>", opts) -- closes current tab
keymap("n", "<leader>tn", ":tabn<CR>", opts) -- go to the next tab
keymap("n", "<leader>tp", ":tabp<CR>", opts) -- go to the previous tab

-- Find and replace all words
keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)

-- Make file executable
-- keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Indent
keymap("n", "<", "v<", opts)
keymap("n", ">", "v>", opts)

-- Insert --
-- Press jk fast to enter
-- keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- vim-maximizer
keymap("n", "<leader>sm", ":MaximizerToggle<CR>", opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Navbuddy
keymap("n", "<leader>nv", ":Navbuddy<CR>", opts)
-- ZenMode
keymap("n", "<leader>zm", ":ZenMode<CR>", opts)
-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fs", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fc", ":Telescope grep_string<CR>")
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
-- keymap("n", "<leader>fe",) opens file browser do not unncomment

-- Git
-- keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- Lsp
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)
keymap("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
keymap("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
keymap("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
keymap("n", "<leader>ld", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
keymap("n", "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor
keymap("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
keymap("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor

-- Trouble
keymap("n", "<leader>tt", "<cmd>TroubleToggle<cr>")
keymap("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>")
keymap("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>")
keymap("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>")

-- Aerial
keymap("n", "<leader>at", "<cmd>AerialToggle<cr>")
