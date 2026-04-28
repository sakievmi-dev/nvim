-- Installation
vim.pack.add({
  {
    src = "https://github.com/j-hui/fidget.nvim",
  },
})

-- Configuration
require("fidget").setup({
  notification = {
    override_vim_notify = true,
  },
  progress = {
    display = {
      done_icon = "✓",
    },
  },
})
