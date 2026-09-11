vim.pack.add({
  "https://github.com/lukas-reineke/indent-blankline.nvim",
})

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
