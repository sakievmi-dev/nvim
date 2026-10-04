vim.pack.add({
  {
    src = "https://github.com/nvim-neo-tree/neo-tree.nvim",
    version = vim.version.range("3"),
  },
  "https://github.com/nvim-lua/plenary.nvim",
  "https://github.com/MunifTanjim/nui.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

require("neo-tree").setup({
  close_if_last_window = true,
  sort_case_insensitive = true,
  enable_git_status = true,
  enable_diagnostics = true,

  window = {
    position = "left",
    width = 35,

    mappings = {
      ["Z"] = "expand_all_nodes",
      ["z"] = "close_all_nodes",
      ["l"] = "open",
      ["h"] = "close_node",

      ["P"] = { "toggle_preview", config = { use_float = true } },
    },
  },

  filesystem = {
    follow_current_file = { enabled = true },
    use_libuv_file_watcher = true,
    hijack_netrw_behavior = "open_default",

    filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = true,

      never_show = { ".DS_Store", "__pycache__", ".git" },
    },
  },
})

map("n", "<leader>e", "<cmd>Neotree toggle focus reveal<cr>", { desc = "NeoTree toggle" })
map("n", "<leader>o", "<cmd>Neotree focus reveal<cr>", { desc = "NeoTree focus" })
