vim.pack.add({
  "https://github.com/Wansmer/langmapper.nvim",
})

require("langmapper").setup({
  custom_desc = function()
    return "which_key_ignore"
  end,
})
