-- Defining optins as a table
local options = {
  relativenumber = true,

  clipboard = "unnamedplus",
  termguicolors = true,
  laststatus = 3,
  smartindent = true,

  expandtab = true,
  shiftwidth = 4,
  softtabstop = 4,
  tabstop = 4,
  
  -- Characters
  listchars = { 
      nbsp = "␣",
      tab = "» ", 
      trail = "·" 
  },
  fillchars = { 
      eob = " " 
  },

  -- Search 
  ignorecase = true,
  smartcase = true,
}

-- Iterating through every item and applying them with vim.opt
for k, v in pairs(options) do
  vim.opt[k] = v
end
