" Some more mappings
"-------------------------------

" When paste format the content
nnoremap p p'[V']=
nnoremap P P'[V']=

" Move selected lines
vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv

" For navigate on local list
nnoremap [l :lprevious<Cr>
nnoremap ]l :lnext<Cr>
nnoremap [L :lfirst<Cr>
nnoremap ]L :llast<Cr>

" Reset the current file
nnoremap <Leader><Del> :! git checkout HEAD -- %<Cr>

" tabular the file
nmap <Leader>t :Tabularize /\|<Cr>

" lambdalisue/gina.vim  (git)
nnoremap <F9> :Gstatus<Cr>:15wincmd_<Cr>
nnoremap <Leader><F9> :Gina blame --width=100<Cr>
nnoremap <F10> :Gdiffsplit<Space> 
nnoremap <Leader><F10> :Gina patch<Cr>
nnoremap <F11> :Git pull<Cr>
nnoremap <Leader><F11> :Git push<Cr>

" tpope/vim-unimpaired
nnoremap <F7> [czz
nnoremap <F8> ]czz

" cohama/agit.vim
nnoremap <F12> :Agit<Cr>
nnoremap <Leader><F12> :AgitFile<Cr>

" For setting js test runner
" nnoremap <Leader>T :vsplit %:h/__tests__/%:t:r.spec.js<CR>
nnoremap <Leader>T :let g:test#javascript#runner='jest'<Left> 

" kamykn/spelunker.vim
nnoremap <Leader>s :CtrlPSpell<CR>
nnoremap <Leader>S :SpelunkerAddAll

" dyng/ctrlsf.vim
nnoremap <Leader>F :CtrlSF<Space>
