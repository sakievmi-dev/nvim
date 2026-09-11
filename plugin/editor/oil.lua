vim.pack.add({
  "https://github.com/stevearc/oil.nvim",
  "https://github.com/malewicz1337/oil-git.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

require("oil").setup({
  skip_confirm_for_simple_edits = true,

  view_options = {
    show_hidden = true,
  },
})

require("oil-git").setup()

map("n", "<leader>o", "<cmd>e.<cr>", { desc = "[O]il" })
