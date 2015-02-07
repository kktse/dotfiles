syntax on

set showcmd                     " show partial commands in status line
set ruler                       " show cursor position in status line
set nocompatible                " be iMproved
set number
filetype off                     " required!

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
" Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'nvie/vim-flake8'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on     " required!~                                  i

" Python config
autocmd Filetype python 	call Flake8()
autocmd BufWrite *.py		call Flake8()

function VerticalFlakes()
    call Flake8()
    wincmd t
    wincmd H
    vertical resize 120
endfunction

set textwidth=72
"
" Flake8 Configuration
let g:flake8_max_line_length=110
let g:flake8_max_complexity=10

match Error /\%>111v.\+/

abbr _pdb import pdb; pdb.set_trace()
abbr _main if __name__ == "__main__":<CR>    main()
abbr _optparse parser = optparse.OptionParser("usage: %prog [options]"
abbr improt import

set background=dark
set t_Co=16
colorscheme solarized
