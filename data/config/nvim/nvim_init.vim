source ~/.vimrc

map <leader>o :FZF <Return>
map <leader>e :Goyo <Return>
map <leader>d :NERDTree <Return>
map <leader>t :ToggleTerm <Return>
map <leader>T :ToggleTermToggleAll <Return>

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

filetype plugin indent on

" This enables Vim's and neovim's syntax-related features. Without this, some
" VimTeX features will not work (see ":help vimtex-requirements" for more
" info).
syntax enable
let g:vimtex_view_method = 'atril'
let g:vimtex_view_general_viewer = 'atril'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
" let g:vimtex_compiler_method = 'latexmk'
let maplocalleader = ","

call plug#begin()

Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}
Plug 'junegunn/goyo.vim'
Plug 'folke/tokyonight.nvim'
Plug 'chrisbra/unicode.vim'
Plug 'junegunn/fzf'
Plug 'tikhomirov/vim-glsl'
Plug 'tversteeg/registers.nvim'
Plug 'lervag/vimtex'

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'numToStr/Comment.nvim'

call plug#end()

lua require('nvim-cmp-config')
lua require('lspconfig-config')
lua require('telescope-config')
lua require('lualine-config')
lua require('nvim-tree-config')
lua require('diagnostics')
lua require("tokyonight")
lua require("mason").setup()
lua require("toggleterm").setup()
lua require("mason-lspconfig").setup()
lua << EOF
require('Comment').setup({
    ignore = '^$',
    toggler = {
        line = '<leader>/',
        block = '<leader>/',
    },
    opleader = {
        line = '<leader>/',
        block = '<leade/>/',
    },
})

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
  sync_install = false,
  auto_install = true,
  ignore_install = { "javascript" },

  highlight = {
    enable = true,
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,
    additional_vim_regex_highlighting = false,
  },
}


vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    pattern = { "*.c", "*.cpp", "*.h", "*.hpp", "*.cu" },
    desc = "Auto-format c/cpp/cuda files after saving",
    callback = function()
        local fileName = vim.api.nvim_buf_get_name(0)
        vim.cmd(":silent !clang-format -i -style=llvm " .. fileName)
    end,
    group = autocmd_group,
})
EOF

colorscheme tokyonight-night
