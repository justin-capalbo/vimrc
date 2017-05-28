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

" Binding to close a buffer but not actually close the window
nmap <leader>q :bp <BAR> bd #<CR>

"================ General interface and editing  ===============
"syntax highlighting
if !exists("g:syntax_on")
  syntax enable
endif

" attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

"set line numbers
set number

"set tabbing
set smarttab
set expandtab

"set tab size
set shiftwidth=2
set softtabstop=2

"ignore case
set ic

set ai "Auto indent
set si "Smart indent
set nowrap "Don't Wrap lines 

" configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
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

" Buffer index mode - buffer number labels
let g:airline#extensions#tabline#buffer_idx_mode = 1

" Switch to buffers by index
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" Emulate :bn using buffer index mode
map <leader>h <Plug>AirlineSelectPrevTab
map <leader>l <Plug>AirlineSelectNextTab

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
