" Editor
syntax enable

" Update files written to outside of vim
set autoread
" Line numbers
set number
" Indentation
set autoindent
set smartindent
" Tabs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set tabstop=4
set backspace=eol,start,indent
set laststatus=2
" Don't wrap text
set nowrap
" ignore files
set wildignore=tmp/**,dist/**,node_modules/**
" Command-line completion in an enhanced mode
set wildmenu
" Encodings
set encoding=utf-8
set fileencoding=utf-8
" highlight all search matches after search is complete
set hlsearch
" ignore case when searching
set ignorecase
" override ignorecase if the search pattern contains upper case characters
set smartcase
"yank to os clipboard
set clipboard^=unnamed
"UI
set mouse=a
" do all work in memory, no swap file
set noswapfile
set ruler
set hidden
set history=1000

" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

set tags=./tags
set tags+=/home/matt/dev/dt_local/src/websites/www.digitaltrends.com/tags

" treat `$` as part of the word in PHP and JavaScript
au Filetype php        setlocal iskeyword+=$
au Filetype javascript setlocal iskeyword+=$
"
" " treat `.`, and `#`  as part of the word in CSS and SCSS
au Filetype css  setlocal iskeyword+=.,#
au Filetype scss setlocal iskeyword+=.,#

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

let mapleader = ","

inoremap jj <ESC>
set cursorline

" Vundle
set nocompatible
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
Plugin 'Yggdroot/indentLine'
Plugin 'StanAngeloff/php.vim'
Plugin '1995eaton/vim-better-javascript-completion'
Plugin 'ervandew/supertab'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'othree/vim-autocomplpop'
Plugin 'othree/html5.vim'
Plugin 'w0rp/ale'
Plugin 'mileszs/ack.vim'
Plugin 'salcode/vim-wordpress-dict'
Plugin 'arcticicestudio/nord-vim'

call vundle#end()
filetype plugin indent on

" Supertab
let g:SuperTabDefaultCompletionType = "context"

" Gitgutter
let g:gitgutter_max_signs = 1000

" Ale
let g:airline#extensions#ale#enabled = 1

" Neocomplete
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.javascript = '[a-zA-Z_$]\{3,}\|\.[a-zA-Z_$]*'

" PHPcompletetion
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
let g:phpcomplete_parse_docblock_comments = 1

" NERDTree
let NERDTreeShowHidden=1
"Toggle on CTRL-n
map <C-n> :NERDTreeToggle<CR>

" CtrlP
let g:ctrlp_show_hidden=1

" Theme
if has('termguicolors')
    set termguicolors
endif

" Airline
let g:airline_theme='nord'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" themes
let g:nord_italic_comments = 1
color nord
