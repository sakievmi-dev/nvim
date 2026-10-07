vim.pack.add({
  "https://github.com/lukas-reineke/virt-column.nvim",
})

require("virt-column").setup({
  char = "▏",
  highlight = "VirtColumn",
})

local columns = {
  python = "88",
  lua = "100",
}

vim.api.nvim_create_autocmd("FileType", {
  callback = function(args)
    local col = columns[args.match]
    if col then
      vim.opt_local.colorcolumn = col
    end
  end,
})
