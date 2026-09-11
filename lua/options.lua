local options = {
  -- Line numbers
  relativenumber = true,
  number = true,
  signcolumn = "yes",

  -- UI
  cursorline = true,
  termguicolors = true,
  laststatus = 3,

  -- Clipboard
  clipboard = "unnamedplus",

  -- Indentation
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

for option, value in pairs(options) do
  vim.opt[option] = value
end
