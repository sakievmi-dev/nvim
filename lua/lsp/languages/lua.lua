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

  -- lua_ls
  vim.lsp.config("lua_ls", {
    capabilities = capabilities,
    settings = {
      Lua = {
        runtime = {
          version = "LuaJIT",
        },
        diagnostics = {
          globals = { "vim" },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
        },
      },
    },
  })
  vim.lsp.enable("lua_ls")

  -- Formatting
  require("conform").setup({
    formatters_by_ft = {
      lua = { "stylua" },
    },
  })
end

M.ensure_installed = {
  "lua_ls",
}

return M
