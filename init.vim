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

" Quickly insert an empty new line without entering insert mode
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

"================ General interface and editing  ===============
"syntax highlighting
if !exists("g:syntax_on")
  syntax enable
endif

"set line numbers
set number

"set tabbing
set smarttab
set expandtab

"set tab size
set shiftwidth=2
set softtabstop=2


"================ Nerdtree ===============

" Open NERDTree on startup, when no file has been specified
autocmd VimEnter * if !argc() | NERDTree | endif

" General 
let NERDTreeDirArrows = 1
let NERDTreeMinimalUI = 1
let NERDTreeWinSize = 35

" toggle
map <Leader>n :NERDTreeToggle<CR>

"================ Airline ===============

" Enable buffer list
let g:airline#extensions#tabline#enabled = 1

" Show filename only
let g:airline#extensions#tabline#fnamemod = ':t'

" Show ctrlp modes in airline
let g:airline#extensions#ctrlp#show_adjacent_modes = 1

"================ Ale ===============

" Set error message format 
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warn'
let g:ale_echo_msg_format = '%severity%: %s [%linter%]'

" Disable ruby/ERB linter
let g:ale_linters = {
\   'ruby':['ruby'],  
\   'eruby':[]
\}

"================ ctrlp ===============

" Set working directory for ctrlp to nearest ancestor with .git/.hg/.svn/.bzr/_dars, then directory of current file.
let g:ctrlp_working_path_mode = 'ra'

"================ Deoplete ===============

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Ignore case
let g:deoplete#enable_ignore_case = 1

" Smart case
let g:deoplete#enable_smart_case = 1
