" Some personal shortcut mapping
"-------------------------------

" Helper functions
function! SwitchBool()
    let wordUnderCursor = expand("<cword>")
    if wordUnderCursor ==# "true"
        exe 'normal ciwfalse'
    endif

    if wordUnderCursor ==# "false"
        exe 'normal ciwtrue'
    endif
    
    if wordUnderCursor ==# "height"
        exe 'normal ciwwidth'
    endif
    if wordUnderCursor ==# "width"
        exe 'normal ciwheight'
    endif
    if wordUnderCursor ==# "margin"
        exe 'normal ciwpadding'
    endif
    if wordUnderCursor ==# "padding"
        exe 'normal ciwmargin'
    endif
endfunction

" leader is comma
let mapleader=","
nnoremap \ ,

" Send the paste item to xclip
vnoremap <Leader>y "*y

" redraw the screen and set items
nnoremap <Leader>` :redraw!
nnoremap <Leader>1 :set foldmethod=syntax
nnoremap <Leader>2 :set foldmethod=indent
nnoremap <Leader>3 :set cc=

" unset and disable items
nnoremap <Leader>! :ALEDisable<CR>

" turn off the highlight
nnoremap <Leader>/ :nohlsearch<CR>

" when go to tag, should look for every matching one
nnoremap <C-]> g<C-]>

" HTML: quickly add attr to the tag
nnoremap <Leader>> hf>i<Space>

" Add a ,/; above end of line
nnoremap <Leader>, mpk$A,<Esc>`p
nnoremap <Leader>; mpk$A;<Esc>`p
nnoremap <Leader>) o});<ESC> 

" Map the selection of a code block
nnoremap <Leader>b $V%
nnoremap <Leader>B viB

" For search and replace ex mode
nnoremap <Leader>ff :%s/<C-r><C-w>//gn<CR>
nnoremap <Leader>FF :%s/<C-r><C-a>//gn<CR>
nnoremap <Leader>fr :%s/<c-r><C-w>//gc<Left><Left><Left>
nnoremap <Leader>FR :%s/<c-r><C-a>//gc<Left><Left><Left>

" For quick vsplit diff
nnoremap <Leader>d :diffthis<CR><C-w>l:diffthis<CR>

" For navigate on local list
nnoremap [l :lprevious<CR>
nnoremap ]l :lnext<CR>
nnoremap [L :lfirst<CR>
nnoremap ]L :llast<CR>

" Quick shorcut for true and false
nnoremap <Leader>x :call SwitchBool()<CR>

" scrooloose/nerdtree
nnoremap <Leader><Space> :NERDTreeFind<CR>

" Center the screen when navigate folds
nnoremap zj zjzz
nnoremap zk zkzz

" when pan up/down speed it
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

" Reset the current file
nnoremap <Leader><Del> :! git checkout HEAD -- %<CR>

" Shift-tab to unindent
inoremap <S-Tab> <C-o><<

" Keep the indent highlighted
vnoremap > >gv
vnoremap < <gv

" When a forward search, back to current search item
nnoremap * *Nzz
nnoremap # #Nzz
nnoremap n nzz
nnoremap N Nzz

" For workflow
nnoremap <Leader>e :q<CR>:Gstatus<CR>:q<CR>

" stage the current
nnoremap <Leader>w :Gwrite!<CR> 

" Help
nnoremap <F1> :help <C-r><C-w><CR>

" Quit
nnoremap <F2> :q<CR>

" ctrlpvim/ctrlp.vim
nnoremap <F3> :CtrlP<CR>
nnoremap <F4> :CtrlPMRU<CR>

" tpope/vim-unimpaired 
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
nnoremap <F12> :Agit<CR>:vertical resize 150<CR>:Agit<CR>
nnoremap <Leader><F12> :AgitFile<CR>

" mileszs/ack.vim
nnoremap <Leader>* :Ack! '<C-r><C-w>'<Space>
nnoremap <Leader>a :Ack! ''<Left>
nnoremap <Leader>A :Ack! '<C-r><C-a>'<Space>

