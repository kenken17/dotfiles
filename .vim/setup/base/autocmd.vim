" For autocmd
"------------

"" Open log in quicklist window
autocmd QuickFixCmdPost *grep* cwindow

" Cursor
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
