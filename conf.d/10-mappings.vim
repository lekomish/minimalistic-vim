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
