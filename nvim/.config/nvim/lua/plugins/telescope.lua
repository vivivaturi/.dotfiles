return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
    },
    keys = {
      -- disable the keymap to grep files
      { "<leader>/", false },
      -- change a keymap
      -- { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      -- {
      --   "<leader>ff",
      --   function()
      --     require("telescope.builtin").find_files({ cwd = false })
      --   end,
      --   desc = "Find Files",
      -- },
    },
    opts = {
      defaults = {
        mappings = {
          i = {
            ["<Down>"] = require("telescope.actions").cycle_history_next,
            ["<Up>"] = require("telescope.actions").cycle_history_prev,
            ["<C-j>"] = require("telescope.actions").move_selection_next,
            ["<C-k>"] = require("telescope.actions").move_selection_previous,
          },
        },
      },
      extensions = {
        file_browser = {
          theme = "ivy",
          -- disables netrw and use telescope-file-browser in its place
          -- hijack_netrw = true,
          hidden = { file_browser = true, folder_browser = true },
        },
      },
    },
  },
}
