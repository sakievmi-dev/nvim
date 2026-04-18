-- Installation
vim.pack.add({
  {
    src = "https://github.com/nvim-telescope/telescope.nvim",
  },
  -- Dependencies
  "https://github.com/nvim-lua/plenary.nvim",
  -- For additional configuration
  "https://github.com/folke/which-key.nvim",
})

-- Mappings
map("n", "<leader>sf", "<cmd>Telescope find_files<cr>", { desc = "[S]earch [F]iles" })
map("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "[S]earch by [G]rep" })
map("n", "<leader>sk", "<cmd>Telescope keymaps<cr>", { desc = "[S]earch [K]eymaps" })
map("n", "<leader>sh", "<cmd>Telescope help_tags<cr>", { desc = "[S]earch [H]elp" })
map("n", "<leader>sd", "<cmd>Telescope diagnostics<cr>", { desc = "[S]earch [D]iagnostics" })
map("n", "<leader>sr", "<cmd>Telescope resume<cr>", { desc = "[S]earch [R]esume" })
map("n", "<leader>s.", "<cmd>Telescope oldfiles<cr>", { desc = "[S]earch Recent Files ('.' for repeat)" })
map("n", "<leader><leader>", "<cmd>Telescope buffers<cr>", { desc = "[ ] Find existing buffers" })

-- Which-key config
local wk = require("which-key")
wk.add({
  { "<leader>s", group = "[S]earch" },
})
