" Prevent duplicate loading
if exists('g:loaded_vim_autocomplete') | finish | endif
let g:loaded_vim_autocomplete=1

" Completion
set omnifunc=syntaxcomplete#Complete    " Use syntax-based completion
set complete+=k                         " Add dictionary words to completion
set completeopt=menu,menuone,noinsert   " Completion menu behavior

" Smart Tab Completion
inoremap <expr> <Tab> TabComplete()
fun! TabComplete()
  if getline('.')[col('.') - 2] =~ '\K' || pumvisible()
    return "\<C-N>"   " Next completion item
  else
    return "\<Tab>"   " Regular Tab
  endif
endfun

" Enter key behavior
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" Auto-trigger completion
autocmd InsertCharPre * call AutoComplete()
fun! AutoComplete()
  if v:char =~ '\K'
        \ && getline('.')[col('.') - 4] !~ '\K'
        \ && getline('.')[col('.') - 3] =~ '\K'
        \ && getline('.')[col('.') - 2] =~ '\K'
        \ && getline('.')[col('.') - 1] !~ '\K'
    call feedkeys("\<C-N>", 'n')
  end
endfun
