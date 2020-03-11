" For all other plugins settings/mappings
"----------------------------------

" vim-airline/vim-airline
let g:airline_exclude_preview=1
let g:airline_section_z = '%3l/%L:%3v'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_mode_map = {
  \ '__'     : '-',
  \ 'c'      : 'C',
  \ 'i'      : 'I',
  \ 'ic'     : 'I',
  \ 'ix'     : 'I',
  \ 'n'      : 'N',
  \ 'multi'  : 'M',
  \ 'ni'     : 'N',
  \ 'no'     : 'N',
  \ 'R'      : 'R',
  \ 'Rv'     : 'R',
  \ 's'      : 'S',
  \ 'S'      : 'S',
  \ ''     : 'S',
  \ 't'      : 'T',
  \ 'v'      : 'V',
  \ 'V'      : 'V',
  \ ''     : 'V',
  \ }

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
let test#strategy = "dispatch"

" Yggdroot/indentLine
let g:indentLine_char = '⎸'

let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
