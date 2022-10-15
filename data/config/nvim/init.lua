local cmd = vim.cmd
local Plug = vim.fn['plug#']

vim.call("plug#begin")
    Plug 'junegunn/goyo.vim'
    Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install']})

    Plug 'preservim/nerdtree' 
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    Plug 'karb94/neoscroll.nvim'

    Plug 'chrisbra/unicode.vim'
vim.call("plug#end")


cmd("source ~/.config/nvim/nvim_init.vim")

require('neoscroll').setup()
local t = {}
t['<leader>k'] = { 'scroll', { '-vim.wo.scroll', 'true', '350', 'sine', [['cursorline']] } }
t['<leader>j'] = { 'scroll', {  'vim.wo.scroll', 'true', '350', 'sine', [['cursorline']] } }
require('neoscroll.config').set_mappings(t)
