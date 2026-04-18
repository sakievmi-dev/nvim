-- Installation
vim.pack.add({
  {
    src = "https://github.com/lukas-reineke/indent-blankline.nvim",
  },
})

-- Configuration
require("ibl").setup({
  indent = {
    char = "▏",
    highlight = "IblIndent",
  },
  scope = {
    enabled = true,
    highlight = "IblScope",
    show_start = true,
    show_end = true,
  },
})
