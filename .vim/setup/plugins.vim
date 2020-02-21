" For all other plugins settings/mappings
"----------------------------------

" cohama/agit.vim
let g:agit_max_log_lines = 100

" editorconfig/editorconfig-vim
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" sheerun/vim-polyglot
let g:polyglot_disabled = ['markdown']
" let g:polyglot_disabled = ['coffee-script', 'pug', 'haml']

" lambdalisue/gina.vim
let g:gina#command#blame#formatter#format = "%su%=on %ti %ma%in - %au"

" janko/vim-test
let test#strategy = "vimux"

" Yggdroot/indentLine
let g:indentLine_char = '⎸'
