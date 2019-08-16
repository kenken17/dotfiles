" For all filetype specific settings
"-----------------------------------

augroup filetype_vim
    au!
    au FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_javascript
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

augroup filetype_vue
    au!
    au FileType vue syntax sync fromstart
    au FileType vue :silent :g/<template>/mark8
    au FileType vue :silent :g/<script>/mark9
    au FileType vue :silent :g/<style/mark0
augroup END

au FileType * setlocal comments-=:// comments+=f://

au InsertEnter * let save_cwd = getcwd() | set autochdir
au InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)

" au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
au WinLeave * setlocal nocursorline
