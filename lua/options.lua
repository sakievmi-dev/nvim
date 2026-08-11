-- Defining optins as a table
local options = {
  relativenumber = true,
  number = true,
  signcolumn = "yes",
  cursorline = true,

  clipboard = "unnamedplus",
  termguicolors = true,
  laststatus = 3,
  smartindent = true,

  expandtab = true,
  shiftwidth = 4,
  softtabstop = 4,
  tabstop = 4,

  scrolloff = 8,

  -- Characters
  listchars = {
    nbsp = "␣",
    tab = "» ",
    trail = "·",
  },
  fillchars = {
    eob = " ",
  },

  -- Search
  ignorecase = true,
  smartcase = true,

  -- Modelines
  modeline = true,
  modelines = 5,
}

-- Iterating through every item and applying them with vim.opt
for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Misc
-- Netrw (File Manager)
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_sort_sequence = [[[\/]$,*]]
vim.g.netrw_sizestyle = "H"
vim.g.netrw_winsize = 30
vim.g.netrw_browse_split = 0
