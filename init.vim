execute pathogen#infect()

"remap leader key
let mapleader = "\<Space>"

"================ Visual Theme ===============
colorscheme gruvbox
set background=dark
set termguicolors
let g:gruvbox_contrast_dark = 'hard' 
"================ General remapping ===============
"remap esc to jk
inoremap jk <ESC>

"remap leader+w to tab through windows
nnoremap <Leader>w <C-W><C-W>
"map leader+v to open vertical split
nnoremap <Leader>v <C-W><C-V>
"map leader+h to open horizontal split
nnoremap <Leader>h <C-W><C-S>
"map leader+q to close window
nnoremap <Leader>q <C-W><C-Q>

" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

"================ General interface and editing  ===============
"syntax highlighting
syntax enable

"set line numbers
set number

"set tabbing
set smarttab
set expandtab

"set tab size
set shiftwidth=2
set softtabstop=2

" Open NERDTree on startup, when no file has been specified
autocmd VimEnter * if !argc() | NERDTree | endif

"================ Nerdtree ===============

"toggle
map <Leader>n :NERDTreeToggle<CR>

"================ Airline ===============

" Enable buffer list
let g:airline#extensions#tabline#enabled = 1

" Show filename only
let g:airline#extensions#tabline#fnamemod = ':t'
