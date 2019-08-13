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

" w0rp/ale
let g:ale_set_quickfix = 0
let g:ale_open_list = 1
let g:ale_sign_error = '▶'
let g:ale_sign_warning = '▶'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_sign_column_always = 1
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_linters = { 
    \ 'javascript': ['eslint'],
    \ 'vue': ['eslint'],
    \ 'css': ['prettier'],
    \ 'scss': ['prettier'],
    \ 'yml': ['prettier']
    \}
let g:ale_fixers = { 
    \ 'javascript': ['eslint'],
    \ 'vue': ['eslint'],
    \ 'css': ['prettier'],
    \ 'scss': ['prettier'],
    \ 'yml': ['prettier']
    \}

" ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'

" jiangmiao/auto-pairs
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutFastWrap = ''
let g:AutoPairsShortcutJump = ''

" Valloric/MatchTagAlways
let g:mta_filetypes = {
            \ 'html' : 1,
            \ 'xhtml' : 1,
            \ 'xml' : 1,
            \ 'jinja' : 1,
            \ 'vue' : 1,
            \}

" cohama/agit.vim
let g:agit_max_log_lines = 100

" editorconfig/editorconfig-vim
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" mattn/emmet-vim
let g:user_emmet_mode='i'
let g:user_emmet_leader_key=','

" Plugin 'yggdroot/indentline'
let g:indentLine_color_term = 237
