return {
  {
    "nvimdev/lspsaga.nvim",
    enabled = false,
    opts = {
      -- keybinds for navigation in lspsaga window
      scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
      -- use enter to open file with definition preview
      definition = {
        edit = "<CR>",
      },
      ui = {
        colors = {
          normal_bg = "#022746",
        },
      },
      symbol_in_winbar = {
        enable = true,
      },
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "gp", "<cmd>Lspsaga peek_definition<CR>", desc = "Peek definition" }
      keys[#keys + 1] = { "<leader>ca", "<cmd>Lspsaga code_action<CR>", desc = "Code action" }
      keys[#keys + 1] = { "<leader>cd", "<cmd>Lspsaga show_line_diagnostics<CR>", desc = "Show line diagnostics" }
      keys[#keys + 1] = { "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", desc = "Diagnostic prev jump" }
      keys[#keys + 1] = { "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", desc = "Diagnostic next jump" }
      keys[#keys + 1] = { "K", "<cmd>Lspsaga hover_doc<cr>", desc = "Hover Docs" }
      keys[#keys + 1] = { "<leader>cr", "<cmd>Lspsaga rename<CR>", desc = "Rename" }
      keys[#keys + 1] = { "<leader>cd", "<cmd>Lspsaga show_cursor_diagnostics<CR>", desc = "Cursor diagnostics" }
    end,
  },
}
