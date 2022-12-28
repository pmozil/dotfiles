local cmd = vim.cmd
local Plug = vim.fn['plug#']

vim.call("plug#begin")
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
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


require("toggleterm").setup{
    size = function(term)
    if term.direction == "horizontal" then
      return 20
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
    end,
}

require('lualine').setup{
    options = {
        theme = 'auto',
        icons_enabled = false
    }
}

cmd("source ~/.config/nvim/nvim_init.vim")
cmd("source ~/.config/nvim/coc_config.vim")
