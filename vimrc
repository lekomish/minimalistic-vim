" Load all config files in numerical order from `conf.d` directory
for f in sort(split(glob('~/.config/vim/conf.d/*.vim'), '\n'))
  execute 'source' f
endfor

" Essential filetype detection
filetype on         " Enable filetype detection
filetype plugin on  " Load plugin files for detected filetypes
filetype indent on  " Load indent files for detected filetypes
syntax on           " Enable syntax highlighting
