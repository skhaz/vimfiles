
set number
set nocompatible
set history=1000
set backspace=indent,eol,start
set showcmd     "show incomplete cmds down the bottom
set showmode    "show current mode down the bottom
set incsearch   "find the next match as we type the search
set hlsearch    "hilight searches by default
set showbreak=...
set wrap linebreak nolist
syntax on "turn on syntax highlighting
set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

set ff=unix
set encoding=utf8

set tabstop=4
set cursorcolumn
set cursorline

set textwidth=80
set colorcolumn=+1

colorscheme diablo3

" NERD Tree
nmap <silent> <special> <S-F2> :NERDTreeToggle<RETURN>

let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']

" for scons
au BufNewFile,BufRead SCons* set filetype=scons

if has("gui_running")
	set gfn=Monaco:h16
	set guioptions-=T
endif

