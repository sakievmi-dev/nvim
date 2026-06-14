-- This is Emacs-style compile commands

-- Requires toggleterm.nvim to work
vim.pack.add({
  "https://github.com/akinsho/toggleterm.nvim",
  "https://github.com/folke/which-key.nvim",
})

local Terminal = require('toggleterm.terminal').Terminal
local last_compile_term = nil
local last_cmd = ""

-- This function is needed for showing compiler errors and warnings
local function wrap_cmd(cmd)
  return cmd .. " 2>&1"
end

-- [C]ompile [C]ommand
vim.keymap.set('n', '<leader>cc', function()
  -- Entering a compile command
  local cmd = vim.fn.input("Compile command: ", last_cmd)

  if cmd ~= "" then
    -- Storing a compile command
    last_cmd = cmd
    -- Start a new terminal and run a compile command

    -- If old terminal is still alive - kill it
    if last_compile_term then last_compile_term:shutdown() end

    -- Start a new terminal and run a compile command
    last_compile_term = Terminal:new({ cmd = wrap_cmd(cmd), close_on_exit = false, hidden = false })
    last_compile_term:toggle()
  end
end, { desc = "Compile: Enter command" })

-- [C]ompile [R]epeat
vim.keymap.set('n', '<leader>cr', function()
  if last_cmd ~= "" then
    -- Start a new terminal and run a compile command
    if last_compile_term then last_compile_term:shutdown() end

      last_compile_term = Terminal:new({ cmd = wrap_cmd(last_cmd), close_on_exit = false, hidden = false })
    last_compile_term:toggle()
  else
    print("No compile command set yet!")
  end
end, { desc = "Compile: Repeat last command" })

-- Which-key config
local wk = require("which-key")
wk.add({
  { "<leader>c", group = "[C]ompile" },
})
