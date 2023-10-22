local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

-- vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
-- vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
bufferline.setup({
	options = {
		close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		offsets = { { filetype = "NvimTree", text = "File Explorer", highlight = "Directory", padding = 0 } },
		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
		buffer_close_icon = "",
		diagnostics = "nvim-lsp",
	},
})
