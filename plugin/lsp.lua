-- If you want to configure LSP configration, go to /lua/lsp

-- Installation
vim.pack.add({
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/williamboman/mason.nvim",
  "https://github.com/williamboman/mason-lspconfig.nvim",
})

-- Configuration
vim.diagnostic.config({
  virtual_text = true,
  signs = false,
  underline = true,
})

vim.lsp.inlay_hint.enable(true)
