" For all other plugins settings/mappings
"----------------------------------

" vim-airline/vim-airline
let g:airline_exclude_preview=1
let g:airline_section_a = '' " do not show the mode
let g:airline_section_z = '%l/%L:%3v'
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
let g:airline_extensions = ['branch', 'coc', 'ctrlp', 'fugitiveline', 'gina', 'gutentags']

" cohama/agit.vim
let g:agit_max_log_lines = 10000

" editorconfig/editorconfig-vim
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" lambdalisue/gina.vim
let g:gina#command#blame#formatter#format = "%su%=on %ti %ma%in - %au"

let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" iamcco/markdown-preview.nvim
let g:mkdp_command_for_global = 1

" romainl/vim-qf
let g:qf_mapping_ack_style = 1
let g:qf_shorten_path = 0

" janko/vim-test
let test#strategy = "vimux"
let test#javascript#runner = 'jest'
let test#javascript#jest#options = {
  \ 'all':   '--watch',
  \ 'file': '--watch',
  \ 'suite': '--watch',
  \ 'last': '--watch',
\}
" kamykn/spelunker.vim
let g:enable_spelunker_vim = 0
let g:ctrlp_extensions = get(g:, 'ctrlp_extensions', [])
      \ + ['spelunker']

" junegunn/gv.vim
let g:twiggy_local_branch_sort = 'mru'
let g:twiggy_remote_branch_sort = 'date'

" dyng/ctrlsf.vim
let g:ctrlsf_winsize = '40%'
let g:ctrlsf_regex_pattern = 1
let g:ctrlsf_auto_close = {
    \ "normal" : 0,
    \ "compact": 0
    \}
let g:ctrlsf_mapping = {
    \ "split": "i",
    \ "vsplit": "s",
    \ "next": "n",
    \ "prev": "N",
    \ }
let g:ctrlsf_auto_focus = {
    \ "at": "start"
    \ }

" mhinz/vim-startify
let g:startify_lists = [
            \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
  \ { 'type': 'commands',  'header': ['   Commands']       },
  \ ]
let g:startify_enable_special = 0
let g:startify_change_to_dir = 0

