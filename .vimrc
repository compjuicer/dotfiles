set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-airline'
Plugin 'maksimr/vim-jsbeautify'

call vundle#end()

filetype plugin indent on

syntax on

let g:syntastic_javascript_checkers = ['jshint']

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set hlsearch
set incsearch
"set ignorecase
set paste

set nowrap
set nofoldenable

set autoread
set autowrite

set wildmode=longest,list,full
set wildmenu

set laststatus=2

set showcmd

colors koehler

let mapleader=","
map <F1> <C-W>
map <F2> <ESC>:set wrap!<CR>
map <F3> <ESC>:q<CR>
map <F4> <ESC>:call JsBeautify()<CR>
