" Leader key definition
let mapleader=" " " Set space as leader key

"
" =========================== Window navigation ===========================
"
" Move to winow below
nnoremap <c-j> <c-w>j
" Move to window above
nnoremap <c-k> <c-w>k
" Move to left window
nnoremap <c-h> <c-w>h
" Move to right window
nnoremap <c-l> <c-w>l
" Next tab
nnoremap <Tab> gt

"
" =========================== File operations ===========================
"
" Ctrl+S to save
map <C-s> :w<CR>
" Ctrl+Q to save and quit
map <C-q> :wq<CR>

"
" =========================== Buffers/tabs ===========================
"
" Ctrl+N for file explorer
map <C-n> :Lex<CR>
" Space+f to open new tab
nnoremap <leader>f :tabedit<space>
" Delete current buffer
nnoremap <leader>bd :bdelete<CR>
" Delete all buffers
nnoremap <leader>ba :bufdo bdelete<CR>


"
" =========================== Text manipulation ===========================
"
" Move visual selection down
vnoremap J :m '>+1<CR>gv=gv
" Move visual seletion up
vnoremap K :m '>-2<CR>gv=gv
" Replace current word
nnoremap <leader>rw :%s/\<<c-r><c-w>\>//g<left><left>
" Wrap selection
nnoremap <leader>sw <cmd>echo "Press a character: " \| let c = nr2char(getchar()) \| exec "normal viwo\ei" . c . "\eea" . c . "\e" \| redraw<CR>

"
" =========================== Clipboard ===========================
"
if executable('xclip')
  " Copy to X11 clipboard
  map <C-c> :w !xclip -sel clip<CR><CR>
  map <C-v> :r !xclip -sel clip -o<CR>
else
  " Fallback for Vim's clipboard
  map <C-c> "+y
  map <C-v> "+P
endif

"
" =========================== Shortcuts ===========================
"
nnoremap ; :
vnoremap ; :

" Toggle spellcheck
nnoremap <leader>sc :setlocal spell! spelllang=en_us<CR>
" Show registers
nnoremap <leader>r <cmd>registers<CR>
