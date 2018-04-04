" For all filetype specific settings
"-----------------------------------

augroup filetype_vim
    au!
    au FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_javascript
    au!
    au FileType javascript setlocal foldmethod=syntax

    " Add in a quick console.log
    au FileType javascript map <leader>c Aconsole.log('>>>', );<esc>hha
augroup END

augroup filetype_vue
    au!
    au FileType vue syntax sync fromstart

    " Add in a quick console.log
    au FileType vue map <leader>c Aconsole.log('>>>', );<esc>hha
augroup END

