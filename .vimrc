" Editor
syntax on

" edit
set number
set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set tabstop=4
set backspace=eol,start,indent
set wrap
set linebreak
set laststatus=2

"yank to os clipboard
set clipboard+=unnamed

"UI
set mouse=a

set ruler
set noswapfile
set hidden
set history=1000

"map space to search
map <space> /
" set incsearch

" first non-blank space char
map 0 ^

" close buffer
map <C-x> :bd<cr>

"buffer control
map <C-j> :bp<cr>
map <C-k> :bn<cr>

" remember info about open buffers on close
set viminfo^=%

let mapleader = ","

inoremap jj <ESC><CR>

" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'L9'
Plugin 'mattn/emmet-vim'
Plugin 'dsawardekar/wordpress.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mhinz/vim-startify'

call vundle#end()
filetype plugin indent on

" NERDTree
" Autoopen
" autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
"Toggle on CTRL-n
map <C-n> :NERDTreeToggle<CR>

" Unite buffer mapping
nnoremap <C-m> :Unite buffer<cr>

" CtrlP remapping for dt
noremap <C-a> :CtrlP<CR>
let g:ctrlp_cmd=':CtrlP ~/Dev/dt_local/docker/projects/dt/web/digitaltrends/current/wp-content/themes/'
let g:ctrlp_show_hidden=1

" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='raven'

" Theme

" set encoding UTF-8
set encoding=utf-8
set fileencoding=utf-8
