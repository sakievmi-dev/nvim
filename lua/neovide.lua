vim.g.neovide_padding_bottom = 6
vim.g.neovide_padding_right = 6
vim.g.neovide_padding_left = 6

vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_scroll_animation_length = 0

vim.g.neovide_cursor_animate_command_line = false

vim.g.neovide_scale_factor = 1.0

-- Ability to change font size at the runtime
local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end

map("n", "<C-=>", function()
  change_scale_factor(1.1)
end)

map("n", "<C-->", function()
  change_scale_factor(1 / 1.1)
end)
