"
" =========================== Markdown ===========================
"
autocmd FileType markdown setlocal wrap linebreak nolist
  " - Soft-wrap text
  " - Break at word boundaries
  " - Disable visible whitespace

"
" =========================== Python ===========================
"
autocmd FileType python setlocal foldmethod=indent
  " - Fold based on indentation levels

"
" =========================== Universal formatting ===========================
"
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  " - Don't auto-wrap comments
  " - Don't auto-insert comment leader
  " - Don't auto-insert comment on 'o'

"
" =========================== Auto-pairs (Enabled selectively) ===========================
"
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
