local cmd = vim.cmd -- commands

cmd("source ~/.config/nvim/nvim_init.vim")

require('neoscroll').setup()
local t = {}
t['<leader>k'] = { 'scroll', { '-vim.wo.scroll', 'true', '350', 'sine', [['cursorline']] } }
t['<leader>j'] = { 'scroll', {  'vim.wo.scroll', 'true', '350', 'sine', [['cursorline']] } }
require('neoscroll.config').set_mappings(t)
