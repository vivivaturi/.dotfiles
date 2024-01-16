return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Neotree Toggle" },
    { "<leader>fe", false },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = false, -- when true, they will just be displayed differently than normal items
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_hidden = false, -- only works on Windows for hidden files/directories
      },
    },
  },
}
