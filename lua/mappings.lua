-- Many mappings is defined in "/plugins".
-- These are core ones that's do not require any plugins.

-- Set leader
map("", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Misc
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Terminal
map("t", "<C-q>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
