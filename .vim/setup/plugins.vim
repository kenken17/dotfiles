" For all plugins settings/mappings
"----------------------------------

" scrooloose/nerdtree
let NERDTreeShowHidden=1
let NERDTreeWinSize=50
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeIgnore=['dist$', 'node_modules$', '\.vscode$', '\.idea$', '\.git$', '\.github', '.sass-cache', '\.DS_Store', '\.serverless$', '\.nyc_output$', 'coverage', '\.un\~$']
let g:NERDTreeNodeDelimiter = "\u00a0"

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'

" cohama/agit.vim
let g:agit_max_log_lines = 100

" editorconfig/editorconfig-vim
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" sheerun/vim-polyglot
let g:polyglot_disabled = ['markdown']
" let g:polyglot_disabled = ['coffee-script', 'pug', 'haml']

let g:Tlist_Ctags_Cmd='/usr/local/bin/ctags'

" lambdalisue/gina.vim
let g:gina#command#blame#formatter#format = "%su%=on %ti %ma%in - %au"

" scrooloose/nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

" janko/vim-test
let test#strategy = "vimux"

" Yggdroot/indentLine
let g:indentLine_char = '⎸'
