return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
    keys = {
      { "<leader>fe", "<cmd>Telescope file_browser<cr>", desc = "File Explorer" },
    },
    -- opts = {
    --   extensions = {
    --     file_browser = {
    --       theme = "dropdown",
    --       -- disables netrw and use telescope-file-browser in its place
    --       hijack_netrw = true,
    --       -- mappings = {
    --       --   -- your custom insert mode mappings
    --       --   ["i"] = {
    --       --     ["<C-w>"] = function()
    --       --       vim.cmd("normal vbd")
    --       --     end,
    --       --   },
    --       --   ["n"] = {
    --       --     -- your custom normal mode mappings
    --       --     ["N"] = require("telescope._extensions.file_browser").create,
    --       --     ["h"] = require("telescope._extensions.file_browser").goto_parent_dir,
    --       --     ["/"] = function()
    --       --       vim.cmd("startinsert")
    --       --     end,
    --       --   },
    --       -- },
    --       manual_mode = true,
    --     },
    --   },
    -- },
  },
}
