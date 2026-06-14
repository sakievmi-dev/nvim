-- Globals
_G.map = vim.keymap.set

-- Requires
require("options")
require("mappings")
require("autocmd")

-- LSP settings
require("lsp.init")

-- Neovide
if vim.g.neovide then
  require("neovide")
end

-- Custom scripts
require("scripts.compile-command")
