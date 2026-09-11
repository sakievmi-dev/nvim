vim.pack.add({
  "https://github.com/coffebar/neovim-project",
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/ibhagwan/fzf-lua",
  "https://github.com/folke/snacks.nvim",
  "https://github.com/Shatur/neovim-session-manager",
  "https://github.com/folke/which-key.nvim",
})

-- Configuration
require("neovim-project").setup({
  projects = {
    "~/projects/*",
    "~/.config/nvim/",
  },
  picker = {
    type = "telescope",
  },
})

map("n", "<leader>pd", "<cmd>NeovimProjectDiscover<cr>", { desc = "[P]roject [D]iscover" })
map("n", "<leader>ph", "<cmd>NeovimProjectHistory<cr>", { desc = "[P]roject [H]istory" })

local wk = require("which-key")
wk.add({
  { "<leader>p", group = "[P]oject" },
})
