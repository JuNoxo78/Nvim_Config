let mapleader=" "

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>sq :q!<CR>

inoremap jk <ESC>
" TAB in general mode will move to next buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go to prev buffer
nnoremap <S-TAB> :bprevious<CR>

" Close current buffer
nnoremap .b :bd<CR>
nnoremap .cb :bd!<CR>
" Better window navigation
    " nnoremap <C-h> <C-w>h
    " nnoremap <C-j> <C-w>j
    " nnoremap <C-k> <C-w>k
    " nnoremap <C-l> <C-w>l
" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>
" Cerrar Terminal
tnoremap <Esc> <C-\><C-n>
