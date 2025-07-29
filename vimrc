" Load all config files in numerical order from `conf.d` directory
for f in sort(split(glob('~/.config/vim/conf.d/*.vim'), '\n'))
  execute 'source' f
endfor

" Netrw (built-in file explorer) settings
let g:netrw_banner=0        " Disable help banner
let g:netrw_liststyle=3     " Tree-style listing
let g:netrw_showhide=1      " Show hidden files (toggle with gh)
let g:netrw_winsize=20      " Initial window size (20% of screen)
let g:netrw_browse_split=4  " Open files in previous window
let g:netrw_preview=1       " Preview files vertically
let g:netrw_alto=0          " Keep preview window on right

" Essential filetype detection
filetype on         " Enable filetype detection
filetype plugin on  " Load plugin files for detected filetypes
filetype indent on  " Load indent files for detected filetypes
syntax on           " Enable syntax highlighting
