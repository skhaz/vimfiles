set number
set nocompatible
set history=1000
set backspace=indent,eol,start
set showcmd   " show incomplete cmds down the bottom
set showmode  " show current mode down the bottom
set incsearch " find the next match as we type the search
set hlsearch  " hilight searches by default
set magic " set magic on, for regular expressions
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
set nobackup
set history=700

" Always hide the statusline
set laststatus=2

" No sound, no blink on errros
set noerrorbells
set novisualbell

" NERDTree
nmap <silent> <special> <S-F2> :NERDTreeToggle<RETURN>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']

if has("gui_running")
	if has("win32")
		set gfn=Inconsolata:h14
	else
		set gfn=Monaco:h14
	endif

	set lines=999 columns=999 " hack to show maximized
	set guioptions-=T " remove the toolbar
endif

" tab navigation
map <C-Tab> :tabnext<CR>
map <S-Tab> :tabprevious<CR>

" clang
let g:clang_user_options='|| exit 0'

" json
nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>

" gist
let g:gist_detect_filetype=1

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set statusline=[%04l,%04v]\ [A=\%03.3b\ H=\%02.2B]\ [%{&ff}-%Y]\ [LIN=%L]\ %<%F%h%r%h%w%m

