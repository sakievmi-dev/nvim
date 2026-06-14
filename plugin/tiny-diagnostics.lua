-- Installation
vim.pack.add({
  {
    src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim",
  },
})

-- Configuration
require("tiny-inline-diagnostic").setup({
  signs = {
    left = "",
    right = "",
    diag = "●",
    arrow = " ",
  },

  options = {
    multilines = {
      enabled = true
    }
  }
})

vim.diagnostic.config({ virtual_text = false })

-- Mappings
vim.keymap.set("n", "<leader>dt", "<cmd>TinyInlineDiag toggle<cr>", { desc = "Toggle diagnostics" })
vim.keymap.set("n", "<leader>dc", "<cmd>TinyInlineDiag toggle_cursor_only<cr>", { desc = "Toggle cursor-only diagnostics" })

-- Which-key config
local wk = require("which-key")

wk.add({
  { "<leader>d", group = "[D]agnostics" },
})
