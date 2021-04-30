filetype off
set encoding=utf-8
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'rking/ag.vim'
Plugin 'ap/vim-css-color'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'moll/vim-node'
Plugin 'ervandew/supertab'
"Plugin 'ycm-core/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'fatih/vim-go'

call vundle#end()

filetype plugin indent on
set autoindent

let g:rainbow_active = 1

let mapleader = ","

set t_Co=256
set backspace=indent,eol,start

"set nocompatible
syntax enable
set hlsearch
set background="dark"
set modelines=0
set tenc=utf8
set nu
set showmode
set showcmd
set showmatch
set incsearch
set hidden
set wildmode=list:longest,full

set listchars="trail:\u87, nbsp:~;tab:\uBB"
set novisualbell
set belloff=all
set nowrap
set laststatus=2
set statusline=2

set mouse=a

set nobackup
set noswapfile

set lazyredraw
set autoread
set timeoutlen=1000
set updatetime=100

set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

set norelativenumber
set colorcolumn=121
set textwidth=120

"set cursorcolumn

highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

" config key to toggle cursorcolumn, nohl
map <leader>C :set cursorcolumn<cr>
map <leader>c :set nocursorcolumn<cr>
map <leader>L :set cursorline<cr>
map <leader>l :set nocursorline<cr>

colorscheme default
let g:airline_theme='base16_3024'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


" turn off hlsearch
nnoremap <leader><space> :nohlsearch<CR>

map <leader>h :nohl<cr>

inoremap jk <Esc>

" highlight ColorColumn ctermbg=LightGreen
" highlight CursorColumn ctermbg=Green
" highlight ExtraWhitespace ctermbg=9 guifg=Red
" highlight Visual guifg=White guibg=LightBlue gui=none
" highlight Search guifg=White guibg=LightBlue ctermbg=Yellow gui=none
" highlight LineNr ctermfg=LightBlue
" highlight CursorLineNr ctermbg=White ctermfg=Brown cterm=bold

"highlight TabLineFill ctermfg=0 ctermbg=0
"highlight TabLine ctermbg=8 ctermfg=White guifg=White guibg=Grey
"highlight TabLineSel ctermfg=Blue ctermbg=LightBlue

highlight ExtraWhitespace ctermbg=red guibg=red

set guifont=Monaco:h12
set guioptions=r

nmap ; :
vmap ; :
map 0 ^
nmap j gj
nmap k gk

"nnoremap <up>    <Esc>:echoerr 'Please use k instead'<CR>
"nnoremap <down>  <Esc>:echoerr 'Please use j instead'<CR>
"nnoremap <left>  <Esc>:echoerr 'Please use h instead'<CR>
"nnoremap <right> <Esc>:echoerr 'Please use l instead'<CR>

"inoremap <up>    <Esc>:echoerr 'Please use k instead'<CR>
"inoremap <down>  <Esc>:echoerr 'Please use j instead'<CR>
"inoremap <left>  <Esc>:echoerr 'Please use h instead'<CR>
"inoremap <right> <Esc>:echoerr 'Please use l instead'<CR>

" copy to clipboard
"set clipboard=unnamed

map cy "+y
map cp "+p

" auto save config
let g:auto_save = 0
let g:auto_save_no_updatetime = 0
let g:auto_save_in_insert_mode = 0
let g:auto_save_silent = 0

let g:netrw_banner = 0
let g:netrw_liststyle = 3
"let g:netrw_browse_split = 2
let g:netrw_winsize = 20

"augroup ProjectDrawer
  "autocmd!
  "autocmd VimEnter * :Vexplore
"augroup END

" fold
set foldmethod=indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
nnoremap <space> za

" ctags
nnoremap <leader>ct :!ctags -R<CR>

nnoremap <leader>. :CtrlPTag<cr>
nnoremap <C-b> :CtrlPBuffer<cr>

" Vim explorer
"nnoremap <leader>n :Lexplore.<cr>
nnoremap <leader>n :NERDTreeToggle<cr>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

"hi VertSplit ctermbg=5 ctermfg=256
hi VertSplit ctermbg=none ctermfg=LightBlue
set fillchars+=vert:\|

" Strip trailing space
nnoremap <leader>st :StripWhitespace<CR>
nnoremap <leader>tw :ToggleWhitespace<CR>

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/log/*,*/coverage/*,tags,*/maildir/*,*/vendor/*,*/public/assets/*,*/bower_components/*,*/dist/*,*/node_modules/*,*/downloads/*,*/bundled/*,*/unbundled/*
map <leader>p :CtrlPClearAllCaches<CR>

let g:netrw_browse_split = 2
let g:netrw_altv = 1
let g:netrw_winsize = 25

" make YCM compatible with UltiSnips (using supertab)
set completeopt-=preview
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'
"nnoremap <leader>jd :YcmCompleter GoTo<CR>
"nnoremap <leader>fx :YcmCompleter FixIt<CR>

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = ";"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Map buffer
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprevious<CR>

" Map ] [ to {}
nnoremap [ {
nnoremap ] }

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

set suffixesadd+=".rb,.js,.go"
au filetype go inoremap <buffer> .<C-p> .<C-x><C-o>

command Vimrc :tabnew $HOME/.vimrc

command InsertLocalDate :r!date "+\%Y-\%m-\%d"
command InsertDateText :r!date "+\%a, \%d \%b \%Y"
