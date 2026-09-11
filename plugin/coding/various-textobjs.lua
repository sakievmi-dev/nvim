vim.pack.add({
  "https://github.com/chrisgrieser/nvim-various-textobjs",
})

require("various-textobjs").setup({
  keymaps = {
    useDefaults = false,
  },
})

map({ "x", "o" }, "aq", function()
  require("various-textobjs").anyQuote("outer")
end, { desc = "any quote" })
map({ "x", "o" }, "iq", function()
  require("various-textobjs").anyQuote("inner")
end, { desc = "inner any quote" })
