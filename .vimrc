" ---------------------------------------------------
" INSTALLATION
" ---------------------------------------------------
"
" EXTERNAL UTILITIES
" 1) FZF (https://github.com/junegunn/fzf) - brew install fzf
" 2) RIPGREP (https://github.com/BurntSushi/ripgrep) - brew install ripgrep
"
" VIM-PLUG
" (https://github.com/junegunn/vim-plug)
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" After vim-plug installed open vim and run :PlugInstall
"
" ---------------------------------------------------
" PLUGINS
" ---------------------------------------------------
"  This plugins will be automatically installed by
"  vim-plug when :PlugInstall is run

call plug#begin()
Plug 'tomasiser/vim-code-dark'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'terryma/vim-multiple-cursors'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

" ---------------------------------------------------
" THEME & LOOKS
" ---------------------------------------------------

colorscheme codedark
let g:airline_theme='minimalist'

" ---------------------------------------------------
" SETTINGS
" ---------------------------------------------------

syntax on
filetype plugin indent on
set expandtab
set shiftwidth=2
set softtabstop=2
set number relativenumber
set nobackup
set noswapfile
set nowritebackup
let g:gitgutter_map_keys = 0

set nowrap
set hidden
set wildmenu
" do not show serch message when bottom reached
set shm+=s
set backspace=indent,eol,start "fix backspace issues with multiple cursors
"git gutter update time
set updatetime=100
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
" git gutter always show sign column
if exists('&signcolumn')  " Vim 7.4.2201
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif

" Prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

"Nerdtree
let g:NERDTreeNodeDelimiter = "\u00a0"

" ---------------------------------------------------
" MAPPINGS
" ---------------------------------------------------
let mapleader = "\<Space>"
nnoremap ; :
map <leader>b :NERDTreeToggle<CR>
map <leader>h <C-W><C-H>
map <leader>j <C-W><C-J>
map <leader>k <C-W><C-K>
map <leader>l <C-W><C-L>
map <leader>w :vsp<CR><C-W><C-L>
map <leader>e :sp<CR><C-W><C-J>
map q <Nop>
map <leader>q :q<CR>
vnoremap // y/<C-R>"<CR>
nnoremap <leader>p :GFiles<cr>
nnoremap <leader>o :Buffers<cr>
nnoremap <leader>i :BLines<cr>
nnoremap <leader>m :Marks<cr>
nnoremap <leader>f :Rg<cr>

" Nerdtree color update
hi Directory guifg=#FF0000 ctermfg=red
