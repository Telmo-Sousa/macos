let NERDTreeMinimalUI=1
" Set compatibility to Vim only.
" autocmd VimEnter * NERDTree | wincmd p
" Show hidden files
let NERDTreeShowHidden=1
" NERDTree settings
nmap <C-f> :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" automatically open nedtree
 au VimEnter *  NERDTree

" dracula shit idk
packadd! dracula
colorscheme dracula
let g:dracula_colorterm = 0

" set vim colorscheme
set termguicolors

" set airline theme to dracucla
let g:airline_theme='dracula'

" set encoding
set encoding=UTF-8

" Nerdtree commands

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

call plug#begin('~/.vim/plugged')
" Make vim pretty with nova-vim
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'

" Install ansible plugin 
Plug 'pearofducks/ansible-vim'

" Make vim pretty with nova-vim
Plug 'sheerun/vim-polyglot'

" vim-gitgutter, to see changes in files using git
Plug 'airblade/vim-gitgutter'
highlight clear SignColumn
set signcolumn=number
" Custom GitGutter Symbols
let g:gitgutter_sign_added = '▋'
let g:gitgutter_sign_modified = '▍'
let g:gitgutter_sign_removed = '▊'



" From vimrc

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
"Plug 'neoclide/coc.nvim' , { 'branch' : 'release' }
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
"Plug 'yggdroot/indentline'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'"
call plug#end()

let g:coc_global_extensions = [ 'coc-tsserver' ]

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
:imap ii <Esc>


" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
" set cursorline

" Highlight cursor line underneath the cursor vertically.
" set cursorcolumn

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest
