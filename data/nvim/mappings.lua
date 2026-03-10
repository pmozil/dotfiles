require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Add this to your custom keybindings
vim.api.nvim_set_keymap('n', '<leader>l', ':lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
