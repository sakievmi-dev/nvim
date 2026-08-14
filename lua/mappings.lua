-- Many mappings is defined in "/plugins".
-- These are core ones that's do not require any plugins.

-- Set leader
map("", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Netrw (File Manager)
-- map("", "<leader>f", "<cmd>Lexplore<CR>")

-- Misc
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Terminal
map("t", "<C-q>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- LSP
map("n", "gd", vim.lsp.buf.definition, { desc = "LSP [G]o to [D]efinition" })
