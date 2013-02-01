
set nocompatible " be iMproved

set number
set wrap
set backspace=indent,eol,start
set tabstop=4
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

let file = expand("~/.vim/bundles.vim")
if filereadable(file)
  silent! execute 'source '.file
endif

try
  colorscheme sonofobsidian
catch
endtry

filetype plugin indent on

set showcmd   " show incomplete cmds down the bottom
set showmode  " show current mode down the bottom
set incsearch " find the next match as we type the search
set hlsearch  " hilight searches by default
set magic " set magic on, for regular expressions
set ignorecase
set smartcase

" Highlight whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

