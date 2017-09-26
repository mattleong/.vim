" Editor
syntax enable
set number
set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set tabstop=4
set backspace=eol,start,indent
set laststatus=2
set nowrap
set encoding=utf-8
set fileencoding=utf-8
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

" first non-blank space char
map 0 ^

" close buffer
map <C-x> :bd<cr>

"buffer control
map <C-j> :bp<cr>
map <C-k> :bn<cr>

" remember info about open buffers on close
set viminfo^=%

set number
set relativenumber

let mapleader = ","

inoremap jj <ESC>
set cursorline

" fix black bg bug
" https://superuser.com/questions/457911/in-vim-background-color-changes-on-scrolling
"if &term =~ '256color'


" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'L9'
Plugin 'mhinz/vim-startify'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mxw/vim-jsx'
Plugin 'ap/vim-css-color'
Plugin 'Raimondi/delimitMate'
Plugin 'elzr/vim-json'
" Plugin 'othree/vim-autocomplpop'
Plugin 'pangloss/vim-javascript'
Plugin 'arcticicestudio/nord-vim'

call vundle#end()
filetype plugin indent on

" vim-javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_arrow_function       = "⇒"
set conceallevel=1

let NERDTreeShowHidden=1

"Toggle on CTRL-n
map <C-n> :NERDTreeToggle<CR>

" CtrlP remapping for dt
noremap <C-a> :CtrlP<CR>
let g:ctrlp_show_hidden=1

" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Airline
let g:airline_theme='nord'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" themes
set termguicolors " 24-bit terminal
let g:nord_italic_comments = 1
let g:nord_comment_brightness = 12
color nord
