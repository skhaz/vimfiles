
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
  colorscheme solarized
catch
endtry

filetype plugin indent on

