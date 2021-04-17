

runtime myPlugs.vim
runtime ide.vim

let g:loaded_matchparen=1

syntax on
set number
set bs=indent,eol,start
set showcmd
set ruler
set mouse=a
set title
set hidden
set confirm
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %l,%c%V 
set t_Co=256
set smartindent
set autoindent
set tabstop=2
set shiftwidth=2 
set cursorline
set autoread
set pastetoggle=
set splitright 
set splitbelow 
set completeopt=longest,menuone 
set infercase
set noswapfile
set nobackup
set encoding=utf-8
set termencoding=utf-8
set fileformat=unix
set wildmenu
set wcm=<TAB>
set noshowmatch

nnoremap <c-j> <c-w>j
nnoremap <c-h> <c-w>h
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

let g:floaterm_width    = 1.0
let g:floaterm_height   = 0.3
let g:floaterm_position = 'bottom'

let g:cmake_link_compile_commands = 1

let g:startify_bookmarks = [
  \ { 'z': '~/.zshrc' },
  \ { 'v': '~/.config/nvim/init.vim' },
  \ { 's': '~/.config/sway/config' }
  \ ]

let g:startify_custom_header = [
  \ '                                     ',
  \ '                         _           ',
  \ '                        (_)          ',
  \ '   _ __   ___  _____   ___ _ __ ___  ',
  \ '  | |_ \ / _ \/ _ \ \ / / | |_ ` _ \ ',
  \ '  | | | |  __/ (_) \ V /| | | | | | |',
  \ '  |_| |_|\___|\___/ \_/ |_|_| |_| |_|',
  \]

let g:startify_lists = [
      \ { 'header': ['   Bookmarks'],       'type': 'bookmarks' },
      \ { 'header': ['   MRU'],            'type': 'files' },
      \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
      \ ]

autocmd VimEnter * if argc() == 0 | Startify | endif
