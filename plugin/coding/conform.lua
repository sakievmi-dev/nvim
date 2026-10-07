vim.pack.add({
  "https://github.com/stevearc/conform.nvim",
})

require("conform").setup({
  formatters = {
    djangofmt = {
      command = "djangofmt",
      args = { "--profile", "jinja", "-" },
      stdin = true,
    },
  },

  formatters_by_ft = {
    lua = { "stylua" },
    python = { "ruff_organize_imports", "ruff_format" },

    -- html
    html = { "djangofmt" },
    htmldjango = { "djangofmt" },
    jinja = { "djangofmt" },
  },

  format_on_save = {
    timeout_ms = 2000,
    lsp_fallback = true,
  },
})
