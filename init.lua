-- Globals
_G.map = vim.keymap.set

-- Requires
require("options")
require("mappings")
require("autocmd")

-- LSP settings
require("lsp.init")
