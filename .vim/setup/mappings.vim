" Some personal shortcut mapping
"-------------------------------

" leader is comma
let mapleader=","

" turn off the highlight
nnoremap <Leader>/ :nohlsearch<CR>

" Add a ,/; above end of line
nnoremap <Leader>, mpk$A,<Esc>`p
nnoremap <Leader>; mpk$A;<Esc>`p

" Map the selection of a code block
nnoremap <Leader>b $V%
nnoremap <Leader>B viB

" junegunn/goyo.vim
nnoremap <Leader>z :Goyo 160<CR>

nnoremap <F2> :q<CR>

" scrooloose/nerdtree
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :NERDTreeFind<CR>

" kien/ctrlp.vim
nnoremap <F5> :CtrlP<CR>

" Tabs switching
nnoremap <F7> gT
nnoremap <F8> gt

" tpope/vim-fugitive
nnoremap <F9> :Gstatus<CR>
nnoremap <Leader><F9> :Gwrite<CR>
nnoremap <F10> :Gvdiff<CR>
nnoremap <Leader><F10> :Gvdiff HEAD@{1}<CR>
nnoremap <F11> :Gpush
nnoremap <Leader><F11> :Gpull

" cohama/agit.vim
nnoremap <F12> :Agit<CR>
nnoremap <Leader><F12> :AgitFile<CR>

" Reset the current file
nnoremap <Leader><Del> :! git checkout HEAD -- %<CR>

" Smart way to move between windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" For jumping to high mid low
nnoremap H Hzz
nnoremap L Lzz
nnoremap n nzz

" Map pasting in inset mode always indent correctly
imap <C-r> <C-r><C-p>

" When a forward search, back to current search item
nnoremap * *N
nnoremap # #N

" Quick yank/paste whole word into register P
" execute "set <M-y>=\ey"
" execute "set <M-r>=\er"
vnoremap <M-y> "py
nnoremap <M-r> "pP
vnoremap <M-r> "pP
inoremap <M-r> <C-o>"pP

