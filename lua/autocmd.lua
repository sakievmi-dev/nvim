-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Different indents for filetypes
local augroup = vim.api.nvim_create_augroup("setIndent", { clear = true })

vim.api.nvim_create_autocmd("FileType", { -- 2 Spaces
  group = augroup,
  pattern = { "javascript", "typescript", "lua", "css", "cpp" },

  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", { -- 4 Spaces
  group = augroup,
  pattern = {"python"},

  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.expandtab = true
  end,
})

-- Treesitter highlighting
vim.api.nvim_create_autocmd('FileType', {
  pattern = { "python", "lua" },
  callback = function() vim.treesitter.start() end,
})
