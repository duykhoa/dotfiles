""
"" Janus setup
""

" Define paths
let g:janus_path = escape(fnamemodify(resolve(expand("<sfile>:p")), ":h"), ' ')
let g:janus_vim_path = escape(fnamemodify(resolve(expand("<sfile>:p" . "vim")), ":h"), ' ')
let g:janus_custom_path = expand("~/.janus")

" Source janus's core
exe 'source ' . g:janus_vim_path . '/core/before/plugin/janus.vim'

" You should note that groups will be processed by Pathogen in reverse
" order they were added.
call janus#add_group("tools")
call janus#add_group("langs")
call janus#add_group("colors")

""
"" Customisations
""

if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif


" Disable plugins prior to loading pathogen
exe 'source ' . g:janus_vim_path . '/core/plugins.vim'

""
"" Pathogen setup
""

" Load all groups, custom dir, and janus core
call janus#load_pathogen()

"" .vimrc.after is loaded after the plugins have loaded
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
set relativenumber
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

