vim.pack.add({
  "https://github.com/stevearc/conform.nvim",
})

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_format" },
  },
  format_on_save = {
    timeout_ms = 2000,
    lsp_fallback = true,
  },
})
