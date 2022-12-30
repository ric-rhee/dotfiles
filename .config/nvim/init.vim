call plug#begin('~/.config/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'
" Plug 'https://github.com/chrisbra/Colorizer.git'
call plug#end()

" lightline Settings (:h g:lightline)
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'absolutepath', 'modified', 'helloworld' ] ]
      \ },
      \ }

" General Settings
set encoding=UTF-8
set number relativenumber
set scrolloff=4
set splitbelow splitright
set cmdheight=1
set noshowmode
let mapleader=","
filetype indent plugin on
filetype plugin on

" Always show statusline
set laststatus=2

" Show trailing whitespace
set list
set listchars=tab:▸\ ,trail:·

" Search into subfolders
set path+=**

" Display matching files
set wildmenu

" Whitespace
set wrap
set linebreak
set textwidth=0
set formatoptions=tcqrn1
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab noshiftround

" Cursorline
set cursorline
hi CursorLine term=bold cterm=bold

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Statusline
"set statusline=
"set statusline+=\ %#IncSearch#
"set statusline+=\ %n                " buffer number
"set statusline+=\ %F                " full path to file
"set statusline+=%=                  " right side
"set statusline+=\ %l/%L             " line number
"set statusline+=\ %c                " column number

" Split Window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Nerdtree
map <C-n> :NERDTreeToggle<CR>

" Moving Lines
xnoremap J :move '>+1<CR>gv-gv
xnoremap K :move '<-2<CR>gv-gv

" Tab Spacing for Java Files
autocmd FileType java setlocal shiftwidth=4 softtabstop=4 expandtab

" Rofi Config File Syntax Highlighting
au BufNewFile,BufRead /*.rasi setf css

" Wrap text at 72 characters for git commit messages
au FileType gitcommit setlocal tw=72

