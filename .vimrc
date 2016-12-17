" ----- Pathogen -----
call pathogen#infect()	" Pathogen must be called before filetype detection.
filetype plugin indent on " Use the Molokai Dark theme

set background=dark
colorscheme molokai

let g:solarized_termtrans=1

" Enable NERD Tree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Less finger wrecking window navigation.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Show hidden files for ctrlp
let g:ctrlp_show_hidden = 1

inoremap ii <ESC>
" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Disable folding
set nofoldenable
" Change mapleader
let mapleader=","
" Enable line numbers
set relativenumber
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=2
set autoindent " automatic indent new lines.
set smartindent " make it smart.
set shiftwidth=2 " use two characters for tabs.
set softtabstop=2 " mindblowing.
set expandtab
" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Always show status line
set laststatus=2
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
" Start scrolling three lines before the horizontal window border
set scrolloff=5
" Strip trailing whitespace (,ss)
autocmd BufWritePre * :%s/\s\+$//e
" Automatic commands
" Enable file type detection
filetype on
" Treat .json files as .js
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
" Treat .md files as Markdown
autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
