" Some more mappings
"-------------------------------

" When paste format the content
nnoremap p p'[V']=
nnoremap P P'[V']=

" For navigate on local list
nnoremap [l :lprevious<Cr>
nnoremap ]l :lnext<Cr>
nnoremap [L :lfirst<Cr>
nnoremap ]L :llast<Cr>


" Center the screen when navigate folds
nnoremap zj zjzz
nnoremap zk zkzz

" when pan up/down speed it
nnoremap <C-e> 5<C-e>
nnoremap <C-y> 5<C-y>

" Reset the current file
nnoremap <Leader><Del> :! git checkout HEAD -- %<Cr>

" tabular the file
nmap <Leader>t :Tabularize /\|<Cr>

" lambdalisue/gina.vim  (git)
nnoremap <Leader>c :Gina commit<Cr>
nnoremap <Leader>C :Gina commit --amend<Cr>
nnoremap <F9> :Gina status --opener="to split"<Cr>
nnoremap <Leader><F9> :Gina blame --width=100<Cr>
nnoremap <F10> :Gina compare<Cr>
nnoremap <Leader><F10> :Gina patch<Cr>
nnoremap <F11> :Gina pull<Cr>
nnoremap <Leader><F11> :Gina push<Cr>

" tpope/vim-unimpaired
nnoremap <F7> [czz
nnoremap <F8> ]czz

" cohama/agit.vim
nnoremap <F12> :Agit<Cr>
nnoremap <Leader><F12> :AgitFile<Cr>

nnoremap <Leader>j :%!python -m json.tool<Cr>
