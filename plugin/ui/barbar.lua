vim.pack.add({
  "https://github.com/akinsho/bufferline.nvim",
})

local bufferline = require("bufferline")
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    bufferline.setup({
      options = {
        mode = "tabs",
      },
    })
  end,
})

map("n", "<leader>tn", "<Cmd>tabnew<CR>", { desc = "[T]ab [N]ew" })
map("n", "<leader>tc", "<Cmd>tabclose<CR>", { desc = "[T]ab [C]lose" })
map("n", "<leader>to", "<Cmd>tabonly<CR>", { desc = "[T]ab [O]nly" })
map("n", "<leader>tf", "<Cmd>tabfirst<CR>", { desc = "[T]ab [F]irst" })
map("n", "<leader>tl", "<Cmd>tablast<CR>", { desc = "[T]ab [L]ast" })

local wk = require("which-key")
wk.add({
  { "<leader>t", group = "[T]ab" },
})

for i = 1, 9 do
  map("n", "<leader>" .. i, "<cmd>BufferLineGoToBuffer " .. i .. "<cr>", { desc = "Go to tab №" .. i })
end
