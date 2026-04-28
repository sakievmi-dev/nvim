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

  appearance = {
    nerd_font_variant = "mono",
  },
  completion = {
    documentation = { auto_show = false },
    ghost_text = { enabled = true },
  },
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },
  fuzzy = {
    implementation = "lua",
  },
})
