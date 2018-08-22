" For all plugins settings/mappings
"----------------------------------

" scrooloose/nerdtree
let NERDTreeShowHidden=1
let NERDTreeWinSize=50
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeIgnore=['node_modules$', '\.idea$', '\.git$', '\.github', '.sass-cache', '\.DS_Store', '\.serverless$', '\.nyc_output$', 'coverage', '\.un\~$']

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

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

" terryma/vim-multiple-cursors
let g:multi_cursor_start_key = '<C-q>'
let g:multi_cursor_select_all_key = '<Leader><C-x>'

" ryanoasis/vim-devicons
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" Valloric/MatchTagAlways
let g:mta_filetypes = {
            \ 'html' : 1,
            \ 'xhtml' : 1,
            \ 'xml' : 1,
            \ 'jinja' : 1,
            \ 'vue' : 1,
            \}

" SirVer/ultisnips,
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]

" cohama/agit.vim
let g:agit_max_log_lines = 100

" editorconfig/editorconfig-vim
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" janko-m/vim-test
let test#strategy = "dispatch"
" let g:test#preserve_screen = 1

" mattn/emmet-vim
let g:user_emmet_mode='i'
let g:user_emmet_leader_key=','
