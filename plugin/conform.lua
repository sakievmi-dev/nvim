-- Installation
vim.pack.add({
  {
    src = "https://github.com/stevearc/conform.nvim",
  },
})

-- AutoCMD
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
