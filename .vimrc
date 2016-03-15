" Editor
syntax on
set number
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set tabstop=4
set wildmenu
set mouse=a
set noswapfile
set hidden

let mapleader = ","

" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scwood/vim-hybrid'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'ack.vim'
Plugin 'bling/vim-airline'
Plugin 'L9'
Plugin 'vim-airline/vim-airline-themes'
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
Plugin 'm2mdas/phpcomplete-extended'
Plugin 'supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
" Plugin 'Shougo/neocomplete'

call vundle#end()
filetype plugin indent on

" Php Auto Complete Extended
" SuperTab
autocmd FileType php setlocal omnifunc=phpcomplete_extended#CompletePHP
let g:SuperTabDefaultCompletetionType = "<c-x><c-o>"

" Neocomplete autostart
" let g:neocomplete#enable_at_startup = 1

" NERDTree
" Autoopen
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
"CTRL-n
map <C-n> :NERDTreeToggle<CR>

" CtrlP remapping for dt
noremap <C-a> :CtrlP<CR>
let g:ctrlp_cmd=':CtrlP ~/Dev/dt_local/docker/projects/dt/web/digitaltrends/current/wp-content/themes/'

" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Theme
colorscheme hybrid
set background=dark
set runtimepath^=~/.vim/bundle/ag

" Reload files changed outside of vim
set autoread

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
