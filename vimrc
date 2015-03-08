set nocompatible

set history=700

" set filetype stuff on
filetype off

set rtp+=~/.vim/bundle/vundle/

call vundle#begin()

" ALL VUNDLE PLUGINS SHOULD BE PLACED HERE
Plugin 'gmarik/vundle'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

set autoread

set showmode
set backspace=indent,eol,start
set ruler
set autoread     " automatically reload files changed outside of Vim
set wildmenu
set title


" ----------------------------
" ----- COLORS AND FONTS -----
" ----------------------------
" Enable syntax highlighting
syntax enable
set background=dark
colorscheme gruvbox 
" Set utf-8 as standard encoding
set encoding=utf8

" Set autoreload of .vimrc file
autocmd! bufwritepost .vimrc source %

" Set Unix as standard file type
set ffs=unix,dos,mac

" Use spaces instead of tabs
set expandtab
set smarttab

" Tab stuff
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab

" Linebreak on 500 characters
set lbr
set tw=500

" Showing line numbers and length
set number
set tw=79
set nowrap
set fo-=t
set colorcolumn=80
highlight colorcolumn ctermbg=233

set ai   "Auto indent
set si   "Smart indent
set wrap "Wrap lines

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
