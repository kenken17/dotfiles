" Some personal shortcut mapping
"-------------------------------

" leader is comma
let mapleader=","

" turn off the highlight
map <leader>/ :nohlsearch<cr>

" Add a ,/; above end of line
nmap <leader>, mpk$A,<esc>`p
nmap <leader>; mpk$A;<esc>`p

" junegunn/goyo.vim
map <leader>z :Goyo 160<cr>

" maxbrunsfeld/vim-yankstack
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

" scrooloose/nerdtree
map <F3> :NERDTreeToggle<cr>
map <F4> :NERDTreeFind<cr>

" junegunn/fzf
map <F5> :GF<cr>

" Buffer switching
map <F7> :bp<cr>
map <F8> :bn<cr>

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

