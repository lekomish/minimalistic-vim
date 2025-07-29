"
" =========================== Core behavior ===========================
"
set nocompatible    " Disable vi compatibility mode
set visualbell      " Use visual bell instead of beeping
set encoding=UTF-8  " Set character encoding
set mouse=a         " Enable mouse in all modes
set modeline        " Allow modelines (file-specific settings)
set modelines=0     " But disable for security (contradictory but common)

"
" =========================== Indentation rules ===========================
"
set tabstop=2     " Visual spaces per TAB
set shiftwidth=2  " Spaces for autoindent
set expandtab     " Convert tabs to spaces
set smarttab      " Better tab behavior at line start

"
" =========================== UI/UX settings ===========================
"
set number          " Show line numbers
set relativenumber  " Show relative line numbers
set wrap            " Soft-wrap long lines
set showcmd         " Show partial command in status line
set showmode        " Show current mode (INSERT/VISUAL/etc)
set showmatch       " Highlight matching brackets
set splitbelow      " New horizontal splits go below
set splitright      " New vertical splits go right

"
" =========================== Search behavior ===========================
"
set incsearch   " Show matches while typing
set hlsearch    " Highlight all matches
set ignorecase  " Case-insensitive search
set smartcase   " Case-sensitive if search contains uppercase

"
" =========================== Miscellaneous ===========================
"
set history=1000                                    " Command history length
set wildmenu                                        " Enhanced command-line completion
set wildmode=longest:full,full                      " Completion behavior
set wildignore=*.png,*.jpg,*.pdf,*.gif,*.img,*.pyc  " Ignored in file completion
