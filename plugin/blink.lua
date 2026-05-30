-- Installation
vim.pack.add({
  {
    src = "https://github.com/saghen/blink.cmp",
    version = "v1.x",
  },
})

-- Configuration
require("blink.cmp").setup({
  keymap = { preset = "default" },

  completion = {
    documentation = { auto_show = false },
    ghost_text = { enabled = false },
    menu = { auto_show = false },
  },

  appearance = {
    nerd_font_variant = "mono",
  },

  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },

  fuzzy = {
    implementation = "lua",
  },
})
