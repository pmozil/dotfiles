source ~/.vimrc
colorscheme tokyonight-night

map <leader>o :FZF <Return>
map <leader>e :Goyo <Return>
map <leader>d :NERDTree <Return>
map <leader>t :ToggleTerm <Return>
map <leader>T :ToggleTermToggleAll <Return>

nmap ga <Plug>(UnicodeGA)

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
let g:vimtex_compiler_method = 'latexmk'
let maplocalleader = ","
