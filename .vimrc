filetype plugin on
filetype indent on
syntax on

"colorscheme molokai
"colorscheme solarized
colorscheme gge

"adjust colors for xterm-256color
hi Statement ctermfg=180 cterm=NONE
hi Search term=reverse ctermfg=0 ctermbg=3
hi DiffChange ctermbg=5
hi DiffText term=reverse cterm=bold ctermbg=1
hi DiffAdd term=bold ctermbg=1 guibg=LightBlue
set t_ut=

"don't do scoll bind (sync)
set noscrollbind

"no wrap, no column limits
set textwidth=0 
set wrapmargin=0

" Do not change 'tabstop' from its default value of 8 with this setup.
set softtabstop=2

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 2 or 4 spaces
set shiftwidth=2
"set tabstop=4

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

set lazyredraw          " redraw only when we need to.

" set default split to right or below
set splitright
set splitbelow

" Highlight search results
set hlsearch

"remove red blocks for tabs in Fortran Programm
let fortran_have_tabs=1

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

"set number              " show line numbers
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu

let mapleader=","       " leader is comma

" turn off search highlight using ,<space>
" or manually stop highlighting the old search with :nohlsearch
nnoremap <leader><space> :nohlsearch<CR>
"toggle line number
nnoremap <leader>n :set invnumber<CR>

" Python specific settings
autocmd FileType python setlocal expandtab   " Use spaces instead of tabs
autocmd FileType python setlocal shiftwidth=4   " Indentation width
autocmd FileType python setlocal softtabstop=4  " Tab key inserts 2 spaces
