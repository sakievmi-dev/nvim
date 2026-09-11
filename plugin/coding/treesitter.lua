vim.pack.add({
  "https://github.com/nvim-treesitter/nvim-treesitter",
  "https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
})
require("nvim-treesitter").install({
  "python",
  "lua",
  "cpp",
})
require("nvim-treesitter-textobjects").setup({})

map({ "x", "o" }, "am", function()
  require("nvim-treesitter-textobjects.select").select_textobject("@function.outer", "textobjects")
end, { desc = "method" })
map({ "x", "o" }, "im", function()
  require("nvim-treesitter-textobjects.select").select_textobject("@function.inner", "textobjects")
end, { desc = "inner method" })
map({ "x", "o" }, "ac", function()
  require("nvim-treesitter-textobjects.select").select_textobject("@class.outer", "textobjects")
end, { desc = "class" })
map({ "x", "o" }, "ic", function()
  require("nvim-treesitter-textobjects.select").select_textobject("@class.inner", "textobjects")
end, { desc = "inner class" })
map({ "x", "o" }, "aa", function()
  require("nvim-treesitter-textobjects.select").select_textobject("@parameter.outer", "textobjects")
end, { desc = "parameter" })
map({ "x", "o" }, "ia", function()
  require("nvim-treesitter-textobjects.select").select_textobject("@parameter.inner", "textobjects")
end, { desc = "inner parameter" })

local move = require("nvim-treesitter-textobjects.move")

map({ "n", "x", "o" }, "]m", function()
  move.goto_next_start("@function.outer", "textobjects")
end, { desc = "next method start" })
map({ "n", "x", "o" }, "]M", function()
  move.goto_next_end("@function.outer", "textobjects")
end, { desc = "next method end" })
map({ "n", "x", "o" }, "[m", function()
  move.goto_previous_start("@function.outer", "textobjects")
end, { desc = "prev method start" })
map({ "n", "x", "o" }, "[M", function()
  move.goto_previous_end("@function.outer", "textobjects")
end, { desc = "prev method end" })

map({ "n", "x", "o" }, "]c", function()
  move.goto_next_start("@class.outer", "textobjects")
end, { desc = "next class start" })
map({ "n", "x", "o" }, "[c", function()
  move.goto_previous_start("@class.outer", "textobjects")
end, { desc = "prev class start" })
