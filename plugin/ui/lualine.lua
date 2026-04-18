-- Installation
vim.pack.add({
  {
    src = "https://github.com/nvim-lualine/lualine.nvim",
  },
  -- Dependencies
  "https://github.com/nvim-tree/nvim-web-devicons",
})

-- Configuration
require("lualine").setup({
  options = {
    globalstatus = true,

    theme = "auto",

    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
  },
})
