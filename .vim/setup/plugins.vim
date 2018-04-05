" For all plugins settings/mappings
"----------------------------------

" mattn/emmet-vim
let g:user_emmet_mode='iv'
" Enable just for html/css
let g:user_emmet_install_global = 0

let NERDTreeShowHidden=1
let g:NERDTreeWinSize=40
let NERDTreeIgnore=['node_modules$', '\.git$', '\.DS_Store', '\.serverless$', '\.nyc_output$', 'coverage']

" pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" junegunn/fzf
set rtp+=~/.fzf
" Customize fzf colors to match color scheme
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

" w0rp/ale
let g:ale_open_list = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️-'
let g:ale_lint_on_text_changed = 'never'

" alvan/vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'

