vim.pack.add({
  "https://github.com/mrsobakin/multilayout.nvim",
})

require("multilayout").setup({
  layouts = {
    ru = "ru",
  },
  use_libukb = false,
})
