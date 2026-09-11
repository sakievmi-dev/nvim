vim.pack.add({
  "https://github.com/rachartier/tiny-inline-diagnostic.nvim",
})

require("tiny-inline-diagnostic").setup({
  signs = {
    left = "",
    right = "",
    diag = "●",
    arrow = " ",
  },

  options = {
    multilines = {
      enabled = true,
    },
  },
})

vim.diagnostic.config({ virtual_text = false })

map("n", "<leader>dt", "<cmd>TinyInlineDiag toggle<cr>", { desc = "Toggle diagnostics" })
map("n", "<leader>dc", "<cmd>TinyInlineDiag toggle_cursor_only<cr>", { desc = "Toggle cursor-only diagnostics" })

local wk = require("which-key")
wk.add({
  { "<leader>d", group = "[D]agnostics" },
})
