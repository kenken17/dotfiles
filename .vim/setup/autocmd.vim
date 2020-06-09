" Disable coc auto complete for file more than 0.5Mb
let g:trigger_size = 0.5 * 1048576

augroup hugefile
  autocmd!
  autocmd BufReadPre *
    \ let size = getfsize(expand('<afile>')) |
    \ if (size > g:trigger_size) || (size == -2) |
    \   echohl WarningMsg | echomsg 'WARNING: altering options for this huge file!' | echohl None |
    \   exec 'CocDisable' |
    \ else |
    \   exec 'CocEnable' |
    \ endif |
    \ unlet size
augroup END

function! LoadSession()
  let b:sessiondir = $HOME . "/.vim/sessions/" . fnamemodify(getcwd(), ':t')
  let b:sessionfile = b:sessiondir . "/Session.vim"

  if (filereadable(b:sessionfile))
    exe 'silent! source ' b:sessionfile
  else
    exe 'silent! !mkdir -p ' b:sessiondir
    exe 'silent! Obsession ' b:sessiondir
  endif
endfunction

au VimEnter * nested :call LoadSession()
