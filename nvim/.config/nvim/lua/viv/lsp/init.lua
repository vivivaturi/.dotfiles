local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("viv.lsp.mason")
require("viv.lsp.handlers").setup()
-- require("viv.lsp.null-ls")
require("viv.lsp.lspsaga")
