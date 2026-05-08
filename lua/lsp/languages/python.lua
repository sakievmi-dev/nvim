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

  -- BasedPyRight
  -- Be careful with pyproject.toml, pyrightconfig.json and etc.
  -- It will override EVERY setting that was configured here and change them to defaults.
  -- I wasted 4 hours by trying understand that...
  vim.lsp.config("basedpyright", {
    capabilities = capabilities,
    settings = {
      basedpyright = {
        analysis = {
          typeCheckingMode = "basic",
          diagnosticMode = "workspace",
          autoSearchPaths = true,
          useLibraryCodeForTypes = true,
          diagnosticSeverityOverrides = {
            -- There will be overrides
          },
          inlayHints = {
            variableTypes = false,
            callArgumentNames = true,
            functionReturnTypes = false,
            genericTypes = false,
          },
        },
      },
    },
  })
  vim.lsp.enable("basedpyright")

  -- ruff
  vim.lsp.config("ruff", {
    capabilities = capabilities,
    init_options = {
      settings = { args = {} },
    },
  })
  vim.lsp.enable("ruff")
end

M.ensure_installed = {
  "basedpyright",
  "ruff",
}

return M
