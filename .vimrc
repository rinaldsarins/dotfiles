" brew install fzf
" brew install ripgrep
" Leader remap to space
let mapleader = "\<Space>"
map <leader><Space> :

execute pathogen#infect()
syntax on
filetype plugin indent on
"colorscheme monokai
colorscheme spacegray
set expandtab
set shiftwidth=2
set softtabstop=2
"set runtimepath^=~/.vim/bundle/ctrlp.vim
"let g:ctrlp_cmd = 'CtrlP'
"nnoremap <C-o> :CtrlPBuffer<CR>

set number relativenumber

let g:airline_theme='minimalist'

" do not show serch message when bottom reached
set shm+=s

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

let g:gitgutter_map_keys = 0

set nobackup
set noswapfile
map <leader>b :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

map <leader>h <C-W><C-H>
map <leader>j <C-W><C-J>
map <leader>k <C-W><C-K>
map <leader>l <C-W><C-L>
map <leader>w :vsp<CR>
map <leader>e :sp<CR>

set nowrap
set hidden
set wildmenu
vnoremap // y/<C-R>"<CR>
set backspace=indent,eol,start "fix backspace issues with multiple cursors

" git gutter update time
set updatetime=100

" git gutter always show sign column
if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif

" nercomment
let g:NERDDefaultAlign = 'left'
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" ALE linter configs
let g:ale_sign_error = '!!'
let g:ale_sign_warning = '!'

" Ignore case when search
set ignorecase

" Autocomplete (with Ctrl + N, Ctrl + P)
set omnifunc=javascriptcomplete#CompleteJS

" VIM PLUG
call plug#begin()
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

"FZF config
" nnoremap <C-p> :GFiles<cr>
" nnoremap <C-o> :Buffers<cr>
" nnoremap <C-i> :BLines<cr>

nnoremap <leader>p :GFiles<cr>
nnoremap <leader>o :Buffers<cr>
nnoremap <leader>i :BLines<cr>
