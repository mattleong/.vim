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

"UI
set mouse=a

set relativenumber
set ruler
set noswapfile
set hidden
set history=1000

set wildmenu
set wildignore=*.scssc


set showcmd
set showmode

set t_Co=256
set term=screen-256color

set autoread

"map space to search
map <space> /
" set incsearch

" first non-blank space char
map 0 ^

" close buffer
map <leader>bd :Bclose<cr>

"buffer control
map <C-j> :bp<cr>
map <C-k> :bn<cr>

" remember info about open buffers on close
set viminfo ^=%

let mapleader = ","

inoremap jj <ESC><CR>

" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'L9'
Plugin 'tpope/vim-surround'
Plugin 'raimondi/delimitmate'
Plugin 'ap/vim-css-color'
Plugin 'mattn/emmet-vim'
Plugin 'dsawardekar/wordpress.vim'
Plugin 'stanangeloff/php.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'
Plugin 'supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'rking/ag.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mhinz/vim-startify'

call vundle#end()
filetype plugin indent on

" Ag
let g:ag_prg='ag --column --ignore /wp-content/themes/digitaltrends-2014/assets/styles/css/'

" YCM Python
let g:ycm_python_binary_path = '/usr/local/bin/python3'

" Php Auto Complete Extended
" SuperTab
" autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
let g:SuperTabDefaultCompletetionType = "<c-x><c-o>"

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
let g:airline_theme='base16_ocean'

" Theme
colorscheme base16-ocean
let base16colorspace=256
set background=dark

" Ag
set runtimepath^=~/.vim/bundle/ag

" set encoding UTF-8
set encoding=utf-8
set fileencoding=utf-8

" php.vim
" g:php_syntax_extensions_enabled
" b:php_syntax_extensions_enabled
function! PhpSyntaxOverride()
    hi! def link phpDocTags phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride()
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END
