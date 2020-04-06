set number
set autoindent
set backspace=indent,eol,start
set copyindent
set smartindent
set shiftwidth=2
set tabstop=2

" general config
set splitright
set splitbelow

syntax enable

set nocompatible              " be iMproved, required
filetype off                  " required

" highlight search hits
set hlsearch

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
set runtimepath^=~/.vim/bundle/ctrlp.vim
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'pangloss/vim-javascript'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
Plugin 'moll/vim-node'
Plugin 'airblade/vim-gitgutter'
Plugin 'mxw/vim-jsx'
Plugin 'alvan/vim-closetag'
Plugin 'prettier/vim-prettier'
Plugin 'itmammoth/doorboy.vim'
Plugin 'tpope/vim-surround'
Plugin 'cespare/vim-toml'
Plugin 'rust-lang/rust.vim'
Plugin 'machakann/vim-highlightedyank'
Plugin 'fatih/vim-go'
Plugin 'evanleck/vim-svelte'
Plugin 'easymotion/vim-easymotion'
Plugin 'itchyny/lightline.vim'
Plugin 'myusuf3/numbers.vim'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'tpope/vim-commentary'
Plugin 'iamcco/markdown-preview.nvim'

call vundle#end()            " required
filetype plugin indent on    " required

let g:javascript_plugin_jsdoc = 1
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'
let NERDTreeShowHidden=1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
