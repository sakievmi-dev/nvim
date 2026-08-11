-- Installation
vim.pack.add({
  {
    src = "https://github.com/akinsho/toggleterm.nvim",
  },
})

-- Configuration
require("toggleterm").setup({
  open_mapping = [[<c-\>]],

  size = 10,
  direction = "horizontal",

  shade_terminals = false,
})
