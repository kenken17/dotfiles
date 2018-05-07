" For all plugins settings/mappings
"----------------------------------

" scrooloose/nerdtree
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=50
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore=['node_modules$', '\.git$', '\.DS_Store', '\.serverless$', '\.nyc_output$', 'coverage']

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

function! NERDTreeHighlightFile(extensionname, extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' .a:extensionname .'	 ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' .a:extensionname .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('js', 'js', '2', 'none', '#008000', '#151515')
call NERDTreeHighlightFile('vue', 'vue', '2', 'none', '#008000', '#151515')
call NERDTreeHighlightFile('testjs', 'test\.js', '148', 'none', '#A6E22E', '#151515')
call NERDTreeHighlightFile('specjs', 'spec\.js', '148', 'none', '#A6E22E', '#151515')
call NERDTreeHighlightFile('xml', 'xml', '186', 'none', '#E6DB74', '#151515')
call NERDTreeHighlightFile('yml', 'yml', '186', 'none', '#E6DB74', '#151515')
call NERDTreeHighlightFile('html', 'html', '186', 'none', '#E6DB74', '#151515')
call NERDTreeHighlightFile('css', 'css', '197', 'none', '#FC3488', '#151515')
call NERDTreeHighlightFile('scss', 'scss', '208', 'none', '#FD9720', '#151515')

call NERDTreeHighlightFile('json', 'json', '81', 'none', '#82B1FF', '#151515')

call NERDTreeHighlightFile('cssmap', 'css\.map', '241', 'none', '#506E79', '#151515')
call NERDTreeHighlightFile('gitignore', '\.gitignore', '241', 'none', '#506E79', '#151515')
call NERDTreeHighlightFile('gitmodules', '\.gitmodules', '241', 'none', '#506E79', '#151515')

" pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" w0rp/ale
let g:ale_open_list = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '>>'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_sign_column_always = 2
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = { 'javascript': ['eslint'] }

" ctrlpvim/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPBuffer'

" 907th/vim-auto-save
let g:auto_save = 1
let g:auto_save_events = ["BufLeave"]

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

" SirVer/ultisnips
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]

