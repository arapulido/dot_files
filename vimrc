" no compatible with vi, that's it
set nocompatible

" pathogen, to put every plugin on its own folder
call pathogen#infect()

" change the mapleader from \ to ,
let mapleader=","

" reduces backslashing 
nnoremap / /\v
vnoremap / /\v

"remap esc
inoremap jj <ESC>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"it allows you to hide buffers instead of closing them
set hidden

set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set expandtab     " tabs are spaces
set number

"use filetype plugins
filetype plugin indent on
filetype plugin on

colorscheme symfony 
" switch syntax highlighting on, when the terminal has colors
set t_Co=256 " make Vim use 256 colors
syntax on
syntax enable

"NERDTree
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
autocmd VimEnter * wincmd w
map tt :NERDTreeToggle<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete

set guifont=Ubuntu\ Mono\ 12
set encoding=utf-8

if has("autocmd") && exists("+omnifunc")
     autocmd Filetype *
   \ if &omnifunc == "" |
   \   setlocal omnifunc=syntaxcomplete#Complete |
   \ endif
endif

