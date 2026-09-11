vim.pack.add({
  "https://github.com/akinsho/toggleterm.nvim",
})

require("toggleterm").setup({
  open_mapping = [[<c-\>]],

  size = 10,
  direction = "horizontal",

  shade_terminals = false,
})
