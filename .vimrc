" Editor
syntax enable

" Update files written to outside of vim
set autoread

" remember info about open buffers on close
set viminfo^=%

" Encodings
set encoding=utf-8
set fileencoding=utf-8

" Line numbers
set number

" userelative line numbers
" set rnu

" Indentation
set autoindent
set smartindent

" Tabs
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set tabstop=4
set backspace=eol,start,indent
set laststatus=2

" Ignore files
set wildignore+=*/node_modules/*,*.scssc,*/wp-includes/*,*/wp-admin/*,*/vendor/*

" Don't wrap text
set nowrap

" highlight all search matches after search is complete
set hlsearch

" Command-line completion in an enhanced mode
set wildmenu

" ignore case when searching
set ignorecase

" override ignorecase if the search pattern contains upper case characters
set smartcase

"yank to os clipboard
set clipboard=unnamedplus

"UI
set mouse=a

" do all work in memory, no swap file
set noswapfile
set ruler
set hidden
set history=1000

" Remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Tags
set tags=./tags
set tags+=/home/matt/dev/dt_local/src/websites/www.digitaltrends.com/tags

" treat `$` as part of the word in PHP and JavaScript
au Filetype php        setlocal iskeyword+=$
au Filetype javascript setlocal iskeyword+=$

" treat `.`, and `#`  as part of the word in CSS and SCSS
au Filetype css  setlocal iskeyword+=.,#
au Filetype scss setlocal iskeyword+=.,#

" Line numbers
set number

" Remap leader
let mapleader = ","

" NAVIGATION
set cursorline
inoremap jj <ESC>

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
autocmd BufReadPost *
\ if line("'\"") >= 1 && line("'\"") <= line("$") |
\   exe "normal! g`\"" |
\ endif

augroup END

" Autocomplete
set completeopt=menu,menuone,longest

" first non-blank space char
map 0 ^
" close buffer
map <C-x> :bd<cr>
" buffer control
map <C-j> :bp<cr>
map <C-k> :bn<cr>

" Vundle
set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Main
Plugin 'L9'
Plugin 'VundleVim/Vundle.vim'

" Navigation
Plugin 'mhinz/vim-startify'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'

" Code stuff
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'

" Autocomplete
Plugin 'Shougo/neocomplete.vim'
Plugin 'ervandew/supertab'

" PHP
Plugin 'shawncplus/phpcomplete.vim'

" Linting
" Plugin 'w0rp/ale'

" Search
Plugin 'mileszs/ack.vim'

" Theme
Plugin 'arcticicestudio/nord-vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on

" Supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" Gitgutter
let g:gitgutter_max_signs = 3000

" Ale

" CtrlP
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '*/node_modules/*\|*/wp-includes/*\|*/vendor/*'

" Neocomplete
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif

let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\|\h\w*::\|\(new\|use\|extends\|implements\)\s'
let g:neocomplete#sources#omni#input_patterns.javascript = '[a-zA-Z_$]\{3,}\|\.[a-zA-Z_$]*'

" PHPcompletetion
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
let g:phpcomplete_parse_docblock_comments = 1

" NERDTree
let NERDTreeShowHidden = 1

"Toggle on CTRL-n
map <C-n> :NERDTreeToggle<CR>

" Theme
if has('termguicolors')
    set termguicolors
endif

" let g:nord_italic_comments = 1
color nord
"color space-vim

" Airline
let g:airline_theme='nord'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

