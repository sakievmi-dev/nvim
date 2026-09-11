vim.pack.add({
  "https://github.com/rose-pine/neovim",
})

require("rose-pine").setup({
  highlight_groups = {
    VirtColumn = { fg = "overlay" },
  },
})

vim.cmd("colorscheme rose-pine")
