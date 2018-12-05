execute pathogen#infect()

"call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on

set autoread
set ruler
set laststatus=2
set textwidth=80
set wildmenu
set t_Co=256

set smartindent
set shiftwidth=2
set tabstop=2
set expandtab

set number
set nocompatible   " Disable vi-compatibility
set encoding=utf-8 " Necessary to show Unicode glyphs

let python_highlight_all = 1
syntax on
syntax enable

map j gj
map k gk
map - <C-w>-
map = <C-w>+
map < <C-w><
map > <C-w>>
"map <C-t> :tabe .<cr>
"map <C-e> :tabclose <cr>

map <silent> <C-d> gT
map <silent> <C-f> gt
map <silent> <C-e> :q<cr>

map <silent> <C-h> <C-w>h
map <silent> <C-j> <C-w>j
map <silent> <C-k> <C-w>k
map <silent> <C-l> <C-w>l

"map <C-w> <C-w>+<bar>
"map <C-q> <C-w>-<bar>
"map <C-a> <C-w>=<bar>

"map <silent> <C-y> <C-w>>
"map <silent> <C-u> <C-w>-
"map <silent> <C-i> <C-w>+
"map <silent> <C-o> <C-w><

:nmap \l :setlocal number!<CR>
:nmap \o :set paste!<CR>
:set incsearch
:set ignorecase
:set smartcase
:set hlsearch
:nmap \q :nohlsearch<CR>

map <C-r> :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.vim$', '\.pyc$']

imap jj <ESC>

vmap > >gv
vmap < <gv

let mapleader=','
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

augroup reload
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
    autocmd BufEnter * checktime

    " Add non-standard extensions.
    autocmd BufRead,BufNewFile *.go set filetype=go
    autocmd BufRead,BufNewFile *.json set filetype=javascript
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd FileType css setlocal iskeyword+=-
    autocmd FileType gitcommit,markdown setlocal spell
    autocmd FileType go setlocal noexpandtab
    autocmd FileType html setlocal textwidth=0
augroup END

colorscheme molokai
