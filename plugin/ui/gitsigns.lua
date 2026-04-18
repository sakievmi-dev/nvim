-- Installation
vim.pack.add({
  {
    src = "https://github.com/lewis6991/gitsigns.nvim",
  },
})

-- Configuration
require("gitsigns").setup()
