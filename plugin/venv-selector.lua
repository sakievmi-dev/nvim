-- Installation
vim.pack.add({
  {
    src = "https://github.com/linux-cultist/venv-selector.nvim",
  },
  -- Dependencies
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
})

-- Configuration
require("venv-selector").setup({})

-- require("neovim-project").setup({
--   projects = {
--     "~/projects/*",
--     "~/.config/nvim/",
--     "~/.config/niri/",
--   },
--   picker = {
--     type = "telescope",
--   }
-- })
--
-- Mappings
-- map("n", "<leader>pd", "<cmd>NeovimProjectDiscover<cr>", { desc = "[P]roject [D]iscover" })
-- map("n", "<leader>ph", "<cmd>NeovimProjectHistory<cr>", { desc = "[P]roject [H]istory" })

-- Which-key config
-- local wk = require("which-key")
--
-- wk.add({
--   { "<leader>p", group = "[P]oject" },
-- })
