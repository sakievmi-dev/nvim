-- Installation
vim.pack.add({
  {
    src = "https://github.com/stevearc/oil.nvim",
  },
})

-- Configuration
require("oil").setup({
  skip_confirm_for_simple_edits = true,
})
