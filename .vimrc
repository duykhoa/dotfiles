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
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-markdown'
Plugin 'slim-template/vim-slim'
Plugin 'benmills/vimux'
Plugin 'skalnik/vim-vroom'
Plugin 'ck3g/vim-change-hash-syntax'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'chrisbra/NrrwRgn'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'vim-scripts/ZoomWin'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'ervandew/supertab'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'luochen1990/rainbow'
Plugin 'majutsushi/tagbar'

call vundle#end()
filetype plugin indent on

let g:rainbow_active = 1

let mapleader = ","

set term=xterm
set t_Co=256

set hlsearch
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

set nobackup
set noswapfile

set backspace=indent,eol,start
set laststatus=2
set cursorline
set lazyredraw
set nowrap

"colorscheme last256
colorscheme bocau
"colorscheme google
"colorscheme jellybeans
"colorscheme vividchalk

set tabstop=2
set shiftwidth=2
set expandtab

imap jj <Esc>
nmap ; :
map 0 ^

let g:vroom_use_colors = 1
let g:vroom_use_vimux = 1
let g:vroom_write_all = 1
let g:vroom_clear_screen = 1
"let g:vroom_use_spring = 1

" auto save config
let g:auto_save = 1
let g:auto_save_no_updatetime = 1
let g:auto_save_in_insert_mode = 0
"let g:auto_save_silent = 0

" nerd tree
map <leader>n :NERDTreeToggle<CR>

" Vimux
map <leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>

" fold
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ctags
set tags=./.tags
map <Leader>ct :!ctags -R --languages=ruby --exclude=.git --exclude=log .<CR>

nnoremap <leader>. :CtrlPTag<cr>
nmap <leader>ta :TagbarToggle<CR>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
hi ColorColumn guibg=#27ae60 ctermbg=11
