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

" auto indent, use mark i
nnoremap g= migg=G'i^

nnoremap <F2> :q<CR>

" scrooloose/nerdtree
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :NERDTreeFind<CR>

" ctrlpvim/ctrlp.vim
nnoremap <F5> :CtrlP<CR>
nnoremap <F6> :CtrlPMRU<CR>

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

" mileszs/ack.vim
nnoremap <Leader>a :Ack

" Reset the current file
nnoremap <Leader><Del> :! git checkout HEAD -- %<CR>

" Smart way to move between windows, no need these map if tmux-navigator is
" insalled
" nnoremap <C-j> <C-W>j
" nnoremap <C-k> <C-W>k
" nnoremap <C-h> <C-W>h
" nnoremap <C-l> <C-W>l

" For jumping to high mid low
nnoremap H Hzz
nnoremap L Lzz
nnoremap n nzz

" Keep the indent highlighted
vnoremap > >gv
vnoremap < <gv

" When a forward search, back to current search item
nnoremap * *N
nnoremap # #N

" Quick yank/paste whole word into register P
execute "set <M-y>=\ey"
execute "set <M-r>=\er"
vnoremap <M-y> "py
nnoremap <M-r> "pP
vnoremap <M-r> "pP
inoremap <M-r> <C-o>"pP

