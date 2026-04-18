-- Installation
vim.pack.add({
  {
    src = "https://github.com/folke/which-key.nvim",
  },
  -- Optional
  "https://github.com/nvim-tree/nvim-web-devicons",
})

-- Configuration
require("which-key").setup({
  delay = 0,
})
