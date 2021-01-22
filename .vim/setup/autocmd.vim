" Disable coc auto complete for file more than 0.5Mb
let g:trigger_size = 0.5 * 1048576

augroup hugefile
  autocmd!
  autocmd BufReadPre *
    \ let size = getfsize(expand('<afile>')) |
    \ if (size > g:trigger_size) || (size == -2) |
    \   echohl WarningMsg | echomsg 'WARNING: altering options for this huge file!' | echohl None |
    \   exec 'CocDisable' |
    \   syntax off |
    \ else |
    \   exec 'CocEnable' |
    \ endif |
    \ unlet size
augroup END
