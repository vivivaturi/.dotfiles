return {
  "numToStr/Comment.nvim",
  keys = {
    { "<leader>/", mode = "n", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", desc = "Comment" },
    {
      "<leader>/",
      mode = "v",
      "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
      desc = "Comment",
    },
  },
}
