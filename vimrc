set number
set nocompatible
set history=1000
set backspace=indent,eol,start
set showcmd   " show incomplete cmds down the bottom
set showmode  " show current mode down the bottom
set incsearch " find the next match as we type the search
set hlsearch  " hilight searches by default
set showbreak=...
set wrap linebreak nolist
syntax on " turn on syntax highlighting
set wildmode=list:longest   " make cmdline tab completion similar to bash
set wildignore=*.o,*.obj,*~ " stuff to ignore when tab completing
filetype plugin on
set ff=unix
set encoding=utf-8
set fileencoding=utf-8
set tabstop=4
set cursorline
set textwidth=80
colorscheme ir_black

" NERDTree
nmap <silent> <special> <S-F2> :NERDTreeToggle<RETURN>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']

" scons
au BufNewFile,BufRead SCons* set filetype=scons

if has("gui_running")
	set gfn=Monaco:h16
	set guioptions-=T " remove the toolbar
endif

" clang
let g:clang_user_options='|| exit 0'

" json
nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>

" gist
let g:gist_detect_filetype=1

