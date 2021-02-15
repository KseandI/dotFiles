

runtime myPlugs.vim
runtime cocconf.vim

let g:loaded_matchparen=1

syntax on
set number
set bs=indent,eol,start
set showcmd
set ruler
set mouse=
set title
set hidden
set confirm
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %l,%c%V 
"set t_Co=256
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

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif


let g:fzf_preview_window = ['right:50%', 'ctrl-/']
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
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
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd l
