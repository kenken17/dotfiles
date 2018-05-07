" For all filetype specific settings
"-----------------------------------

augroup filetype_md
    au!
    au BufEnter *.md noremap <Leader><F5> :! /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome %:p<CR>
augroup END

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
augroup END

