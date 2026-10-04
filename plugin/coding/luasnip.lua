vim.pack.add({
  "https://github.com/L3MON4D3/LuaSnip",
  "https://github.com/rafamadriz/friendly-snippets",
})

-- local ls = require("luasnip")

require("luasnip.loaders.from_vscode").lazy_load()

-- vim.keymap.set({ "i", "s" }, "<C-k>", function()
--   if ls.expand_or_jumpable() then
--     ls.expand_or_jump()
--   end
-- end, { silent = true })
--
-- vim.keymap.set({ "i", "s" }, "<C-j>", function()
--   if ls.jumpable(-1) then
--     ls.jump(-1)
--   end
-- end, { silent = true })
