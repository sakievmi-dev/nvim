-- Installation
vim.pack.add({
  {
    src = "https://github.com/nvim-treesitter/nvim-treesitter",
  },
})

-- Configuration
require("nvim-treesitter").install({ "lua", "vim", "vimdoc" })
