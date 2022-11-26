local cmd = vim.cmd
local Plug = vim.fn['plug#']

vim.call("plug#begin")
    Plug 'nvim-lua/plenary.nvim'
    Plug('akinsho/toggleterm.nvim')
    Plug('sakhnik/nvim-gdb', {['do'] = vim.fn['!./install.sh'] })
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

<<<<<<< HEAD
require("toggleterm").setup{
    size = function(term)
    if term.direction == "horizontal" then
      return 20
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
    end,
}

=======
>>>>>>> 001a0b364e8c379604fa9d1c9aebe76ec00b83d0
cmd("source ~/.config/nvim/nvim_init.vim")
cmd("source ~/.config/nvim/coc_config.vim")
