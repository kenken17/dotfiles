" Some personal shortcut mapping
"-------------------------------

" leader is comma
let mapleader=","
nnoremap \ ,

command W w

" : sudo saves the file
nnoremap <Leader>w :w !sudo tee % > /dev/null<CR>

" Send the paste item to xclip
vnoremap <Leader>y "*y

" format the entire file
nnoremap <Leader>= mpggVG=`p`:w<CR>

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

" Add a ,/; above end of line
nnoremap <Leader>, mpk$A,<Esc>`p
nnoremap <Leader>; mpk$A;<Esc>`p
nnoremap <Leader>) o});<ESC>

" Map the selection of a code block
nnoremap <Leader>b $V%
nnoremap <Leader>B viB

" When paste format the content
nnoremap p pmp,b=`p
nnoremap P Pmp,b=`p
inoremap <C-r>0 <C-r>0<ESC>mp,b=`p

" For search and replace ex mode
nnoremap <Leader>ff :%s/<C-r><C-w>//gn<CR>
nnoremap <Leader>FF :%s/<C-r><C-a>//gn<CR>
nnoremap <Leader>fr :%s/<c-r><C-w>//gc<Left><Left><Left>
vnoremap <Leader>fr :s//g<Left><Left>
nnoremap <Leader>FR :%s/<c-r><C-a>//gc<Left><Left><Left>
vnoremap <Leader>FR :s//g<Left><Left>

" For quick vsplit diff
nnoremap <Leader>d :diffthis<CR><C-w>l:diffthis<CR>
nnoremap <Leader>D :diffoff<CR>

" Diff any commit
" nnoremap <Leader>D <C-w><Enter><C-w>L<CR>:ccl<CR><C-w>H:diffthis<CR><C-w>l:diffthis<CR>

" spell check
nnoremap <Leader>s :set spell spelllang=en_us<CR>
nnoremap <Leader>S :set nospell<CR>

" For navigate on local list
nnoremap [l :lprevious<CR>
nnoremap ]l :lnext<CR>
nnoremap [L :lfirst<CR>
nnoremap ]L :llast<CR>

" scrooloose/nerdtree
nnoremap <Leader><SPACE> :NERDTreeFind<CR>

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

" tabular the file
nmap <Leader>t :Tabularize /\|<CR>

" Up/down with center
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" For workflow
nnoremap <Leader>i :! git update-index --skip-worktree %:p<CR>
nnoremap <Leader>I :! git update-index --no-skip-worktree %:p<CR>

vmap J :s/$\n\s*//gc<CR>a<CR>,/

" Help
nnoremap <F1> :help <C-r><C-w><CR>

" Quit
nnoremap <F2> :q<CR>
nnoremap <Leader><F2> :tabclose<CR>

" ctrlpvim/ctrlp.vim
nnoremap <F3> :CtrlP<CR>
nnoremap <F4> :CtrlPMRU<CR>

" tpope/vim-unimpaired
nnoremap <F7> [czz
nnoremap <F8> ]czz

" lambdalisue/gina.vim  (git)
nnoremap <Leader>c :Gina commit<CR>
nnoremap <Leader>C :Gina commit --amend<CR>
nnoremap <F9> :Gina status --opener="to split"<CR>
nnoremap <Leader><F9> :Gina blame --width=100<CR>
nnoremap <F10> :Gina compare<CR>
nnoremap <Leader><F10> :Gina patch<CR>
nnoremap <F11> :Gina pull<CR>
nnoremap <Leader><F11> :Gina push<CR>

" cohama/agit.vim
nnoremap <F12> :Agit<CR>
nnoremap <Leader><F12> :AgitFile<CR>

nnoremap <Leader>* :Ag -S <C-r><C-w>
nnoremap <Leader>a :Ag -S<Space>

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

nnoremap <Leader>j :%!python -m json.tool<CR>
