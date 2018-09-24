set nocompatible

set history=700

" set filetype stuff on
filetype off

if has('nvim')
    let s:editor_root=expand("~/.config/nvim")
else
    let s:editor_root=expand("~/.vim")
endif

" Setting up Vundle - the vim plugin bundler
let vundle_installed=1
let vundle_readme=s:editor_root . '/bundle/vundle/README.md'
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    " silent execute "! mkdir -p ~/." . s:editor_path_name . "/bundle"
    silent call mkdir(s:editor_root . '/bundle', "p")
    silent execute "!git clone https://github.com/gmarik/vundle " . s:editor_root . "/bundle/vundle"
    let vundle_installed=0
endif
let &rtp = &rtp . ',' . s:editor_root . '/bundle/vundle/'
call vundle#rc(s:editor_root . '/bundle')

" ALL VUNDLE PLUGINS SHOULD BE PLACED HERE
Bundle 'gmarik/vundle'
Bundle 'morhetz/gruvbox'
Bundle 'fatih/vim-go'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

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
set tw=79 "auto word wrapping
set nowrap
set fo-=t
set colorcolumn=120
highlight colorcolumn ctermbg=233

set ai   "Auto indent
set si   "Smart indent
set wrap "Wrap lines

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
