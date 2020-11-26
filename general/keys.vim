let mapleader=" "

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>sq :q!<CR>

inoremap jk <ESC>
inoremap kj <ESC>
" TAB in general mode will move to next buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go to prev buffer
nnoremap <S-TAB> :bprevious<CR>

" Close current buffer
nnoremap .b :bd<CR>
nnoremap .vb :bd!<CR>
" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
" Use alt + hjkl to resize windows
nnoremap <M-,> :resize -2<CR>
nnoremap <M-o> :resize +2<CR>
nnoremap <M-l> :vertical resize -2<CR>
nnoremap <M-h> :vertical resize +2<CR>
" Cerrar Terminal
tnoremap jk <C-\><C-n>

function! OpenTerminal()
  " move to right most buffer
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"
  execute "normal \<C-l>"

  let bufNum = bufnr("%")
  let bufType = getbufvar(bufNum, "&buftype", "not found")

  if bufType == "terminal"
    " close existing terminal
    execute "q"
  else
    " open terminal
    execute "vsp term://fish"

    " turn off numbers
    execute "set nonu"
    execute "set nornu"

    " toggle insert on enter/exit
    silent au BufLeave <buffer> stopinsert!
    silent au BufWinEnter,WinEnter <buffer> startinsert!

    " set maps inside terminal buffer
    execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
    execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q<CR>"
    execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

    startinsert!
  endif
endfunction
nnoremap .t :call OpenTerminal()<CR>
