"
" =========================== Statusline colors ===========================
"
hi User2 ctermbg=lightgreen ctermfg=black guibg=lightgreen guifg=black  " Mode indicator
hi User1 ctermbg=gray ctermfg=white guibg=black guifg=white             " Default background
hi User3 ctermbg=gray  ctermfg=lightcyan guibg=black guifg=lightblue    " File info
hi User4 ctermbg=gray ctermfg=green guibg=black guifg=lightgreen        " Position info

"
" =========================== Statusline configuration ===========================
"
set laststatus=2                 
set statusline=
set statusline+=%2*               
set statusline+=%{StatuslineMode()}
set statusline+=\                   
set statusline+=%{SpellCheckStatus()}
set statusline+=%1*                   
set statusline+=\                      
set statusline+=%3*                     
set statusline+=<
set statusline+=-
set statusline+=\ 
set statusline+=%f
set statusline+=\ 
set statusline+=-
set statusline+=>
set statusline+=\ 
set statusline+=%4*
set statusline+=%m
set statusline+=%=
set statusline+=%h
set statusline+=%r
set statusline+=%4*
set statusline+=%c
set statusline+=/
set statusline+=%l
set statusline+=/
set statusline+=%L
set statusline+=\ 
set statusline+=%1*
set statusline+=|
set statusline+=%y
set statusline+=\ 
set statusline+=%4*
set statusline+=%P
set statusline+=\ 
set statusline+=%3*
set statusline+=t:
set statusline+=%n
set statusline+=\ 

"
" =========================== Mode detection ===========================
"
function! StatuslineMode()
  return get({
        \ 'n': 'NORMAL', 'V': 'VISUAL LINE', 'v': 'VISUAL',
        \ 'i': 'INSERT', "\<C-V>": 'V-BLOCK', 'R': 'REPLACE',
        \ 's': 'SELECT', 't': 'TERMINAL', 'c': 'COMMAND',
        \ '!': 'SHELL'}, mode(), 'VIM')
endfunction

"
" =========================== Spellcheck indicator ===========================
"
function! SpellCheckStatus()
  if &spell 
    return " [SPELL]"
  else
    return ''
  endif	
endfunction
