source ~/.vimrc

" map <leader>t :ToggleTerm <Return>
" map <leader>T :ToggleTermToggleAll <Return>

" disable mouse
map <ScrollWheelUp> <nop>
map <S-ScrollWheelUp> <nop>
map <C-ScrollWheelUp> <nop>
map <ScrollWheelDown> <nop>
map <S-ScrollWheelDown> <nop>
map <C-ScrollWheelDown> <nop>
map <ScrollWheelLeft> <nop>
map <S-ScrollWheelLeft> <nop>
map <C-ScrollWheelLeft> <nop>
map <ScrollWheelRight> <nop>
map <S-ScrollWheelRight> <nop>
map <C-ScrollWheelRight> <nop>
set mouse=
"
" call plug#begin()
"
" Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
" Plug 'junegunn/goyo.vim'
" Plug 'folke/tokyonight.nvim'
" Plug 'chrisbra/unicode.vim'
" Plug 'junegunn/fzf'
" Plug 'tikhomirov/vim-glsl'
" Plug 'tversteeg/registers.nvim'
" Plug 'lervag/vimtex'
"
" Plug 'williamboman/mason.nvim'
" Plug 'williamboman/mason-lspconfig.nvim'
" Plug 'neovim/nvim-lspconfig'
"
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"
" Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" Plug 'nvim-lualine/lualine.nvim'
" Plug 'kyazdani42/nvim-web-devicons'
" Plug 'kyazdani42/nvim-tree.lua'
" Plug 'numToStr/Comment.nvim'
"
" Plug 'hrsh7th/nvim-cmp'
" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'
" Plug 'prettier/vim-prettier'
"
" call plug#end()
"
" lua require('init')

" colorscheme tokyonight-night
let g:zig_fmt_autosave = 0
