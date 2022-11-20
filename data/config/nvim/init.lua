local cmd = vim.cmd
local Plug = vim.fn['plug#']

vim.call("plug#begin")
    Plug 'voldikss/vim-floaterm'
    Plug 'folke/tokyonight.nvim'
    Plug 'junegunn/goyo.vim'
    Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
    Plug 'karb94/neoscroll.nvim'
    Plug 'chrisbra/unicode.vim'
    Plug('neoclide/coc.nvim', {['branch'] = 'release'})
vim.call("plug#end")

require('neoscroll').setup()
local t = {}
t['<leader>k'] = { 'scroll', { '-vim.wo.scroll', 'true', '350', 'sine', [['cursorline']] } }
t['<leader>j'] = { 'scroll', {  'vim.wo.scroll', 'true', '350', 'sine', [['cursorline']] } }
require('neoscroll.config').set_mappings(t)

cmd("source ~/.config/nvim/nvim_init.vim")
cmd("source ~/.config/nvim/coc_config.vim")
