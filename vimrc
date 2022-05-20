set number
set autoread
set ignorecase
set hlsearch
set incsearch

command! W execute 'w !doas -- tee % > /dev/null' <bar> edit!

syntax enable

set tabstop=8

set softtabstop=0 

set ts=4 

set sw=4 

set shiftwidth=4

set expandtab smarttab

set ai si wrap

map <space> /

map <C-c> :noh <Return>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

let mapleader="`"

map<leader>s :sort <Return>

inoremap <C-H> <C-W>
