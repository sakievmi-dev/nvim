local M = {}

-- Adding blink for capabilities
vim.pack.add({
  "https://github.com/saghen/blink.cmp",
})

-- Setup function
M.setup = function()
  -- Getting capabilities
  local has_blink, blink = pcall(require, "blink.cmp")
  local capabilities = has_blink and blink.get_lsp_capabilities() or {}

  -- clangd
  vim.lsp.config("clangd", {
    capabilities = capabilities,
  })
  vim.lsp.enable("clangd")
end

M.ensure_installed = {
  "clangd",
}

return M
