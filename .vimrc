set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'flazz/vim-colorschemes'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'Raimondi/delimitMate' " autocomplete bracket
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'slim-template/vim-slim.git'
Plugin 'rking/ag.vim'
Plugin 'ap/vim-css-color'

call vundle#end()
filetype plugin indent on

let g:rainbow_active = 1

let mapleader = ","

set term=xterm
set t_Co=256

syntax enable
set hlsearch
set background = "dark"
set modelines=0
set tenc=utf8
set nu
set ruler
set autoindent
set showmode
set showcmd
set showmatch
set incsearch
set hidden
set wildmenu
set wildmode=list:longest,full
set visualbell
set ttyfast
set re=1
set nowrap

set nobackup
set noswapfile

set backspace=indent,eol,start

set lazyredraw
set redrawtime=5000
set updatetime=5000

"colorscheme flattown
"colorscheme sexy-railscasts
"colorscheme mojave
"colorscheme lxvc
"colorscheme lilac
"colorscheme sierra
"colorscheme google
"colorscheme phd
"colorscheme industry
"colorscheme grb256
colorscheme default

set laststatus=2

set tabstop=2
set shiftwidth=2
set expandtab

"set cursorcolumn
"set cursorline

" config key to toggle cursorcolumn, nohl
map <leader>C :set cursorcolumn<cr>
map <leader>c :set nocursorcolumn<cr>
map <leader>L :set cursorline<cr>
map <leader>l :set nocursorline<cr>

set norelativenumber
"set colorcolumn=81
set textwidth=81

" turn off hlsearch
nnoremap <leader><space> :nohlsearch<CR>

map <leader>h :nohl<cr>

inoremap jk <Esc>

highlight ColorColumn ctermbg=7
highlight ExtraWhitespace ctermbg=4

nmap ; :
vmap ; :
map 0 ^
nmap j gj
nmap k gk

" auto save config
let g:auto_save = 1
let g:auto_save_no_updatetime = 1
let g:auto_save_in_insert_mode = 1
"let g:auto_save_silent = 0

" nerd tree
map <leader>n :NERDTreeToggle<CR>

" fold
set foldmethod=indent
set foldnestmax=2       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
nnoremap <space> za

" ctags
nnoremap <leader>ct :!ctags -R --languages=ruby --exclude=.git --exclude=log<CR><CR>

nnoremap <leader>. :CtrlPTag<cr>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" hi VertSplit ctermbg=5 ctermfg=256
hi VertSplit ctermbg=2 ctermfg=7
set fillchars+=vert:\|

" Strip trailing space
nnoremap <leader>st :StripWhitespace<CR>
nnoremap <leader>tw :ToggleWhitespace<CR>

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/log/*,*/coverage/*,tags,*/maildir/*,*/vendor/*,*/public/assets/*,*/bower_components/*,*/dist/*,*/node_modules/*,*/downloads/*,*/bundled/*,*/unbundled/*
map <leader>p :CtrlPClearAllCaches<CR>

" Airline
let g:airline_theme="papercolor" "'bubblegum'

" Map buffer
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprevious<CR>
nnoremap <C-b> :buffers<CR>

" Replace hash syntax in ruby
nnoremap <leader>ch :%s/\(\w\+\)\s*=>\s*/\1: /g<cr>

" Reload vimrc
nnoremap <leader>sv :source ~/.vimrc<cr>
nnoremap <leader>ev :vsp ~/.vimrc<cr>
