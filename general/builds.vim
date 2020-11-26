" RUN JS and TS
nmap .n :! node % <CR>
" Run Python 3.8.5
nmap .p :! python3 % <CR>
" Run c and cpp
nmap .c :!gcc %<CR> 
nmap .ec :!./a.out<CR>
nmap .+ :!g++ %<CR>
nmap .e+ :!./a.out<CR>
" Compile haskell
nmap .h :! ghc %<CR> :!./%:r<CR>
" Run Java
nnoremap .j :cd %:p:h <CR> :! javac %:t<CR> :! java %:t:r<CR>
