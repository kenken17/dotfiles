" Some personal shortcut mapping
"-------------------------------

" leader is comma
let mapleader=","

" turn off the highlight
map <leader>/ :nohlsearch<cr>

" Add a ,/; above end of line
nmap <leader>, mpk$A,<esc>`p
nmap <leader>; mpk$A;<esc>`p

" Smart way to move between windows
map <c-j> <c-W>j
map <c-k> <c-W>k
map <c-h> <c-W>h
map <c-l> <c-W>l

" For jumping to high mid low
nnoremap H Hzz
nnoremap L Lzz
nnoremap n nzOzz

" Map pasting in inset mode always indent correctly
imap <c-r> <c-r><c-p>

" When a forward search, back to current search item
nmap * *N

