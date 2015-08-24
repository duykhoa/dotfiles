set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'easymotion/vim-easymotion'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-markdown'
Plugin 'slim-template/vim-slim'
Plugin 'skalnik/vim-vroom'
Plugin 'ck3g/vim-change-hash-syntax'
Plugin 'bronson/vim-trailing-whitespace'

call vundle#end()
filetype plugin indent on

let mapleader = ","

set term=xterm
set t_Co=256

set background = "dark"
set modelines=0
syntax enable
set nu
set ruler
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest,full
set visualbell
set ttyfast
set backspace=indent,eol,start
set laststatus=2
"set relativenumber
set cursorline

set tabstop=2
set shiftwidth=2
imap jj <Esc>
nmap ; :

let g:vroom_use_colors = 1
let g:vroom_use_vimux = 1
let g:vroom_use_spring = 1

" auto save config
let g:auto_save = 1
let g:auto_save_no_updatetime = 1
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent = 1

" custom plugin
map <leader>n :NERDTreeToggle<CR>
