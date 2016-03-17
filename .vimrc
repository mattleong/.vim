" Editor
syntax on
set number
set autoindent
set smartindent

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set tabstop=4
set wrap
set backspace=eol,start,indent

set mouse=a

set relativenumber
set wildmenu
set ruler
set noswapfile
set hidden

set t_Co=256
set term=screen-256color

set autoread

"map space to search
map <space> /
set incsearch

map 0 ^

"buffer control
map <C-j> :bp<cr>
map <C-k> :bp<cr>

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
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
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

call vundle#end()
filetype plugin indent on

" Ag
let g:ag_prg='ag --column --ignore /wp-content/themes/digitaltrends-2014/assets/styles/css/'

" YCM Python
let g:ycm_python_binary_path = '/usr/local/bin/python3'

" Php Auto Complete Extended
" SuperTab
autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
let g:SuperTabDefaultCompletetionType = "<c-x><c-o>"

" Neocomplete autostart
" let g:neocomplete#enable_at_startup = 1

" NERDTree
" Autoopen
" autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
"CTRL-n
map <C-n> :NERDTreeToggle<CR>

" Unite mapping
nnoremap <C-m> :Unite -quick-match buffer<cr>

" CtrlP remapping for dt
noremap <C-a> :CtrlP<CR>
let g:ctrlp_cmd=':CtrlP ~/Dev/dt_local/docker/projects/dt/web/digitaltrends/current/wp-content/themes'
let g:ctrlp_show_hidden=1

" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

let g:phpcomplete_index_composer_command='/usr/local/bin/composer'

" Theme
colorscheme base16-default
let base16colorspace=256
" let g:solarized_termcolors=256
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
