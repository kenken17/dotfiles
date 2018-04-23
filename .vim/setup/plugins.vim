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
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
    exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
    exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('js', '148', 'none', '#A6E22E', '#151515')
call NERDTreeHighlightFile('vue', '148', 'none', '#A6E22E', '#151515')
call NERDTreeHighlightFile('css', '208', 'none', '#FD9720', '#151515')
call NERDTreeHighlightFile('scss', '208', 'none', '#FD9720', '#151515')
call NERDTreeHighlightFile('yml', '186', 'none', '#E6DB74', '#151515')
call NERDTreeHighlightFile('html', '186', 'none', '#E6DB74', '#151515')
call NERDTreeHighlightFile('json', '81', 'none', '#82B1FF', '#151515')

" pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

" w0rp/ale
let g:ale_open_list = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '>>'
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_column_always = 2

" alvan/vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'

" kien/ctrlp.vim
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

" SirVer/ultisnips
let g:UltiSnipsExpandTrigger="<C-space>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"
