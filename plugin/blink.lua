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

    menu = {
      max_height = 4,

      draw = {
        columns = {
          { "kind_icon" },
          { "label", gap = 1},
        },

        components = {
          label = {
            width = { max = 20 }
          }
        }
      }
    }
  },

  appearance = {
    nerd_font_variant = "mono",
  },

  sources = {
    default = { "lsp", "path", "snippets"},
  },

  fuzzy = {
    implementation = "lua",
  },
})
