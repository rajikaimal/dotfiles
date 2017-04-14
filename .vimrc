set encoding=utf-8
set nocompatible              " required
filetype off                  " required
set nu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

autocmd VimEnter * NERDTree
map <leader>r :NERDTreeFind<cr>
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'

" Hide .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

let python_highlight_all=1

syntax on

execute pathogen#infect()

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2
