vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("html_to_htmldjango", { clear = true }),
  pattern = "html",
  callback = function()
    vim.bo.filetype = "htmldjango"
  end,
})
