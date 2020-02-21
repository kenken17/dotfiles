" Some base mappings
"-------------------------------

" leader is comma
let mapleader=","
nnoremap \ ,

command W w

" Map arrow keys
inoremap <M-h> <Left>
inoremap <M-j> <Down>
inoremap <M-k> <Up>
inoremap <M-l> <Right>

" : sudo saves the file
nnoremap <Leader>w :w !sudo tee % > /dev/null<Cr>

" Send the paste item to xclip
vnoremap <Leader>y "*y

" Work flow
nnoremap <Leader>` :redraw!
nnoremap <Leader>1 :set foldmethod=syntax
nnoremap <Leader>2 :set foldmethod=indent
nnoremap <Leader>3 :set colorcolumn=
nnoremap <Leader>i :! git update-index --skip-worktree %:p<Cr>
nnoremap <Leader>I :! git update-index --no-skip-worktree %:p<Cr>
nnoremap <Leader>! :call coc#config('eslint.enable', v:false)
nnoremap <Leader>@ :1,norm! @@

" turn off the highlight
nnoremap <Leader>/ :nohlsearch<Cr>

" Add a ,/; above end of line
nnoremap <Leader>, mpk$A,<Esc>`p
nnoremap <Leader>; mpk$A;<Esc>`p
nnoremap <Leader>) o});<Esc>

" Map the selection of a code block
nnoremap <Leader>b $V%
nnoremap <Leader>B viB

" Space to repeat
nmap <Space> .

" when go to tag, should look for every matching one
nnoremap <C-]> g<C-]>

" For search and replace ex mode
nnoremap <Leader>ff :%s/<C-r><C-w>//gn<Cr>
nnoremap <Leader>FF :%s/<C-r><C-a>//gn<Cr>
nnoremap <Leader>fr :%s/<c-r><C-w>//gc<Left><Left><Left>
vnoremap <Leader>fr :s//g<Left><Left>
nnoremap <Leader>FR :%s/<c-r><C-a>//gc<Left><Left><Left>
vnoremap <Leader>FR :s//g<Left><Left>

" For quick vsplit diff
nnoremap <Leader>d :diffthis<Cr><C-w>l:diffthis<Cr>
nnoremap <Leader>D :diffoff<Cr>

" spell check
nnoremap <Leader>s :set spell spelllang=en_us<Cr>
nnoremap <Leader>S :set nospell<Cr>

" scrooloose/nerdtree
nnoremap <Leader><Space> :NERDTreeFind<Cr>

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

" Up/down with center
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

vmap J :s/$\n\s*//gc<Cr>a<Cr>,/

" Help
nnoremap <F1> :help <C-r><C-w><Cr>

" Quit
nnoremap <F2> :q<Cr>
nnoremap <Leader><F2> :tabclose<Cr>

" ctrlpvim/ctrlp.vim
nnoremap <F3> :CtrlP<Cr>
nnoremap <F4> :CtrlPMRU<Cr>

nnoremap <Leader>* :Ag -S <C-r><C-w>
nnoremap <Leader>a :Ag -S<Space>

