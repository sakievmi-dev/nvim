local M = {}

-- Adding plugins
vim.pack.add({
  "https://github.com/saghen/blink.cmp",
  "https://github.com/stevearc/conform.nvim",
})

-- Setup function
M.setup = function()
  -- Getting capabilities
  local has_blink, blink = pcall(require, "blink.cmp")
  local capabilities = has_blink and blink.get_lsp_capabilities() or {}

  -- clangd
  vim.lsp.config("clangd", {
    capabilities = capabilities,
    cmd = {
      "clangd",
      "--clang-tidy",
      "--fallback-style=LLVM",
      "--background-index",
      "--query-driver=/usr/bin/g++,/usr/bin/gcc",
      "--compile-commands-dir=build",
    },
  })
  vim.lsp.enable("clangd")

  -- Formatting
  require("conform").setup({
    formatters_by_ft = {
      cpp = { "clang-format" },
    },
  })
end

M.ensure_installed = {
  "clangd",
}

return M
