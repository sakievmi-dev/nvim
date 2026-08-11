-- Installation
vim.pack.add({
  {
    src = "https://github.com/stevearc/oil.nvim",
  },
  "https://github.com/malewicz1337/oil-git.nvim",
})

-- Configuration
require("oil").setup({
  skip_confirm_for_simple_edits = true,

  view_options = {
    show_hidden = true,
  },
})

require("oil-git").setup()

-- Mappings
map("n", "<leader>o", "<cmd>e.<cr>", { desc = "[O]il" })
