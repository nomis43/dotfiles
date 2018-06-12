" NEOVIM CONFIG FILE

let g:python_host_prog = '/usr/bin/python2'
set history=700

set showmode
set backspace=indent,eol,start
set ruler
set autoread   " automatically reload files changed outside of Vim
set wildmenu
set title

" PLUGINS
call plug#begin('~/.config/nvim/plugged')

" use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe', {'for': ['cpp', 'c', 'go', 'py']}
Plug 'fatih/vim-go'


call plug#end()

" Enable syntax highlighting
syntax enable
set background=dark
colorscheme seoul256

set encoding=utf8

" Tab stuff
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab

set lbr
set tw=79

set number
set fo-=t " disable autowrap
set colorcolumn=80
highlight colorcolumn ctermbg=233

set ai " auto indent
set si " smart indent
set wrap " wrap lines
