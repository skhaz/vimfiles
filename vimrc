
set nocompatible " be iMproved

set number
set wrap
set backspace=indent,eol,start
set tabstop=4
set showcmd   " show incomplete cmds down the bottom
set showmode  " show current mode down the bottom
set incsearch " find the next match as we type the search
set hlsearch  " hilight searches by default
set magic " set magic on, for regular expressions
set wildmode=list:longest   " make cmdline tab completion similar to bash
set ignorecase
set smartcase
set ruler
set history=1000
set backup

set ff=unix
set encoding=utf-8
set fileencoding=utf-8

" No sound, no blink on errros
set noerrorbells
set novisualbell

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

" Highlight whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" automatically removing all trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" NERDTree
" Open up a NERDtree at startup if there are no files provided
autocmd vimenter * if !argc() | NERDTree | endif
" Close Vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

