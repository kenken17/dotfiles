" Some personal shortcut mapping
"-------------------------------

" Helper functions
function! SwitchBool()
    let wordUnderCursor = expand("<cword>")
    if wordUnderCursor ==# "true"
        exe 'normal ciwfalse'
    endif
    if wordUnderCursor ==# "false"
        exe 'normal ciwtrue'
    endif

    if wordUnderCursor ==# "height"
        exe 'normal ciwwidth'
    endif
    if wordUnderCursor ==# "width"
        exe 'normal ciwheight'
    endif

    if wordUnderCursor ==# "margin"
        exe 'normal ciwpadding'
    endif
    if wordUnderCursor ==# "padding"
        exe 'normal ciwmargin'
    endif

    if wordUnderCursor ==# "left"
        exe 'normal ciwright'
    endif
    if wordUnderCursor ==# "right"
        exe 'normal ciwleft'
    endif

    if wordUnderCursor ==# "top"
        exe 'normal ciwbottom'
    endif
    if wordUnderCursor ==# "bottom"
        exe 'normal ciwtop'
    endif

    if wordUnderCursor ==# "write"
        exe 'normal ciwread'
    endif
    if wordUnderCursor ==# "read"
        exe 'normal ciwwrite'
    endif

    if wordUnderCursor ==# "get"
        exe 'normal ciwpost'
    endif
    if wordUnderCursor ==# "post"
        exe 'normal ciwget'
    endif

    if wordUnderCursor ==# "yes"
        exe 'normal ciwno'
    endif
    if wordUnderCursor ==# "no"
        exe 'normal ciwyes'
    endif
endfunction

" Quick shortcut for true and false
nnoremap <Leader>x :call SwitchBool()<CR>

