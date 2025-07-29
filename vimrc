" Load all config files in numerical order from `conf.d` directory
for f in sort(split(glob('~/.config/vim/conf.d/*.vim'), '\n'))
  execute 'source' f
endfor
