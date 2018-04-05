" Some personal shortcut mapping
"-------------------------------

" leader is comma
let mapleader=","

" turn off the highlight
nnoremap <Leader>/ :nohlsearch<CR>

" Add a ,/; above end of line
nnoremap <Leader>, mpk$A,<Esc>`p
nnoremap <Leader>; mpk$A;<Esc>`p

" junegunn/goyo.vim
nnoremap <Leader>z :Goyo 160<CR>

" maxbrunsfeld/vim-yankstack
nnoremap <Leader>p <Plug>yankstack_substitute_older_paste
nnoremap <Leader>P <Plug>yankstack_substitute_newer_paste

" scrooloose/nerdtree
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :NERDTreeFind<CR>

" junegunn/fzf
nnoremap <F5> :GF<CR>

" Tabs switching
nnoremap <F7> gT
nnoremap <F8> gt

execute "set <M-h>=\eh"
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-l>=\el"
nnoremap <M-h> gT
nnoremap <M-j> gT
nnoremap <M-k> gt
nnoremap <M-l> gt

" tpope/vim-fugitive
nnoremap <F9> :Gstatus<CR>
nnoremap <F10> :Gdiff<CR>
nnoremap <F11> :Gpull<CR>
nnoremap <F12> :Gpush

" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" For jumping to high mid low
nnoremap H Hzz
nnoremap L Lzz
nnoremap n nzOzz

" Map pasting in inset mode always indent correctly
imap <C-r> <C-r><C-p>

" When a forward search, back to current search item
nnoremap * *N

