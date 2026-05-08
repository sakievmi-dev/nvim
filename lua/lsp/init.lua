-- Installing required plugins
vim.pack.add({
  "https://github.com/neovim/nvim-lspconfig",
  "https://github.com/williamboman/mason.nvim",
  "https://github.com/williamboman/mason-lspconfig.nvim",
})

-- Setting up Mason
require("mason").setup()

-- Languages configs in /lua/lsp/languages
local lang_configs = {
  "lsp.languages.lua",
  "lsp.languages.cpp",
  "lsp.languages.python",
  -- "lsp.languages.html",
  -- "lsp.languages.css",
  -- "lsp.languages.django",
  -- "lsp.languages.bash",
}

-- You can add language servers here, if you need this.
-- But it's better to add into ensure_installed at /lua/lsp/language/*.lua
local ensure_installed = {}

-- Iterating lang_configs for creating ensure_installed table
for _, route in ipairs(lang_configs) do
  local m = require(route)

  -- If table "ensure_installed" exists..
  if type(m) == "table" and m.ensure_installed then
    -- ..Iterate table and add servers to ensure_installed
    for _, v in pairs(m.ensure_installed) do
      table.insert(ensure_installed, v)
    end
  end
end

-- Installing required servers
require("mason-lspconfig").setup({
  ensure_installed = ensure_installed,
  automatic_installation = true,
  automatic_enable = false,
})

-- Iterating lang_configs for setting up language servers
for _, route in ipairs(lang_configs) do
  local m = require(route)

  -- If function "setup" exists..
  if type(m) == "table" and m.setup then
    -- ..Install it
    m.setup()
  end
end
