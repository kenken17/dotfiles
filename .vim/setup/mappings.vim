" Some personal shortcut mapping
"-------------------------------

" leader is comma
let mapleader=","

" redraw the screen
nnoremap <Leader>` :redraw!
nnoremap <Leader>1 :set foldmethod=syntax

" turn off the highlight
nnoremap <Leader>/ :nohlsearch<CR>

" when go to tag, should look for every matching one
nnoremap <C-]> g<C-]>

" Add a ,/; above end of line
nnoremap <Leader>, mpk$A,<Esc>`p
nnoremap <Leader>; mpk$A;<Esc>`p

" Map the selection of a code block
nnoremap <Leader>b $V%
nnoremap <Leader>B viB

" For search and replace ex mode
nnoremap <Leader>ff :%s/<C-r>=expand("<cword>")<CR>//gn<CR>
nnoremap <Leader>FF :%s/<C-r>=expand("<cWORD>")<CR>//gn<CR>
nnoremap <Leader>fr :%s/<c-r>=expand("<cword>")<CR>//gc<Left><Left><Left>
nnoremap <Leader>FR :%s/<c-r>=expand("<cWORD>")<CR>//gc<Left><Left><Left>

" For quick vsplit diff
nnoremap <Leader>d :diffthis<CR><C-w>l:diffthis<CR>

" auto indent, use mark i
nnoremap g= migg=G'i^

nnoremap <F2> :q<CR>

" scrooloose/nerdtree
nnoremap <Leader><Space> :NERDTreeFind<CR>

" ctrlpvim/ctrlp.vim
nnoremap <F3> :CtrlP<CR>
nnoremap <F4> :CtrlPMRU<CR>

" tpope/vim-unimpaired 
nnoremap <F5> [q 
nnoremap <F6> ]q
nnoremap <F7> [czz
nnoremap <F8> ]czz

" tpope/vim-fugitive
nnoremap <F9> :Gstatus<CR>
nnoremap <Leader><F9> :Gwrite<CR>
nnoremap <F10> :Gvdiff<CR>
nnoremap <Leader><F10> :Gvdiff HEAD@{}<Left>
nnoremap <F11> :Gpush
nnoremap <Leader><F11> :Gpull

" cohama/agit.vim
nnoremap <F12> :Agit<CR>
nnoremap <Leader><F12> :AgitFile<CR>

" mileszs/ack.vim
nnoremap <Leader>a :Ack! '<C-r><C-w>'<Space>
nnoremap <Leader>A :Ack! '<C-r><C-a>'<Space>

" Reset the current file
nnoremap <Leader><Del> :! git checkout HEAD -- %<CR>

" paste should indent
inoremap <C-r> <C-r><C-p>

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

