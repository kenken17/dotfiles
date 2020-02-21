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

au FileType * setlocal comments-=:// comments+=f://

au InsertEnter * let save_cwd = getcwd() | set autochdir
au InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
