" For autocmd
"------------

"" Open log in quicklist window
autocmd QuickFixCmdPost *grep* cwindow

" Rememeber all file curosr position
autocmd BufWinLeave *.* silent! mkview!
autocmd BufWinEnter *.* silent! loadview

" Cursor
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
