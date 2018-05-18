" Minimal vim color scheme
"
" File:       minimal.vim
" Maintainer: kenekn17
" License:    MIT

set background=dark

hi clear

if exists('syntax_on')
   syntax reset
endif

let g:colors_name = 'minimal'

let s:color_bg          = ['#000000', 0]
let s:color_fg          = ['#949494', 246]
let s:color_lvl_0       = ['#3a3a3a', 237]
let s:color_lvl_1       = ['#808080', 244]
let s:color_lvl_2       = ['#a8a8a8', 248]
let s:color_lvl_3       = ['#c6c6c6', 251]
let s:color_lvl_4       = ['#eeeeee', 255]
let s:color_lvl_5       = ['#ffffff', 231]
let s:color_highlight   = ['#afd700', 148]
let s:color_selection   = ['#c6c6c6', 251]
let s:color_error       = ['#d70000', 160]
let s:color_comment     = ['#808080', 244]
let s:color_none        = ['NONE', 'NONE']

let s:default_fg        = s:color_fg
let s:default_bg        = s:color_bg

let s:italic            = 'italic'
let s:bold              = 'bold'
let s:underline         = 'underline'
let s:none              = 'NONE'

let s:default_lst       = []
let s:default_str       = ''

function! s:hi(...)
    let group = a:1
    let fg    = get(a:, 2, s:default_fg)
    let bg    = get(a:, 3, s:default_bg)
    let attr  = get(a:, 4, s:default_str)

    let cmd = ['highlight', group]

    if fg != s:default_lst
        call add(cmd, 'guifg='.fg[0])
        call add(cmd, 'ctermfg='.fg[1])
    endif

    if bg != s:default_lst
        call add(cmd, 'guibg='.bg[0])
        call add(cmd, 'ctermbg='.bg[1])
    endif

    if attr != s:default_str
        call add(cmd, 'gui='.attr)
        call add(cmd, 'cterm='.attr)
    endif

    exec join(cmd, ' ')
endfunction


" vim interface
call s:hi("newadded", s:color_fg, s:color_lvl_0)
call s:hi("ColorColumn", s:color_lvl_4, s:color_error)
" call s:hi("Conceal", s:color_fg, s:color_bg)
call s:hi("Cursor", s:color_highlight, s:color_bg)
" call s:hi("CursorIM", s:color_fg, s:color_bg)
call s:hi("CursorColumn", s:color_lvl_5, s:color_lvl_0)
call s:hi("CursorLine", s:color_lvl_5, s:color_lvl_0, s:none)
call s:hi("Directory", s:color_lvl_2, s:color_bg)
call s:hi("DiffAdd", s:color_lvl_0, s:color_highlight)
call s:hi("DiffChange", s:color_lvl_4, s:color_bg)
call s:hi("DiffDelete", s:color_lvl_4, s:color_error)
call s:hi("DiffText", s:color_lvl_0, s:color_highlight)
call s:hi("EndOfBuffer", s:color_fg, s:color_bg)
call s:hi("ErrorMsg", s:color_error, s:color_bg)
call s:hi("VertSplit", s:color_lvl_0, s:color_bg)
call s:hi("Folded", s:color_lvl_2, s:color_lvl_0)
call s:hi("FoldColumn", s:color_lvl_2, s:color_lvl_0)
call s:hi("SignColumn", s:color_lvl_0, s:color_lvl_1)
call s:hi("IncSearch", s:color_highlight, s:color_lvl_0)
call s:hi("LineNr", s:color_lvl_1, s:color_bg)
call s:hi("CursorLineNr", s:color_highlight, s:color_bg)
call s:hi("MatchParen", s:color_fg, s:color_highlight)
call s:hi("ModeMsg", s:color_lvl_3, s:color_bg)
call s:hi("MoreMsg", s:color_lvl_3, s:color_bg)
call s:hi("NonText", s:color_lvl_3, s:color_bg)
call s:hi("Normal", s:color_fg, s:color_bg)
call s:hi("Pmenu", s:color_lvl_3, s:color_bg)
call s:hi("PmenuSel", s:color_lvl_0, s:color_highlight)
call s:hi("PmenuSbar", s:color_fg, s:color_lvl_1)
call s:hi("PmenuThumb", s:color_fg, s:color_bg)
call s:hi("Question", s:color_lvl_3, s:color_bg)
" call s:hi("QuickFixLine", s:color_fg, s:color_bg)
call s:hi("Search", s:color_lvl_0, s:color_lvl_3)
call s:hi("SpecialKey", s:color_lvl_3, s:color_bg)
" call s:hi("SpellBad", s:color_fg, s:color_bg)
" call s:hi("SpellCap", s:color_fg, s:color_bg)
" call s:hi("SpellLocal", s:color_fg, s:color_bg)
" call s:hi("SpellRare", s:color_fg, s:color_bg)
" call s:hi("StatusLine", s:color_fg, s:color_bg)
" call s:hi("StatusLineNC", s:color_fg, s:color_bg)
" call s:hi("StatusLineTerm", s:color_fg, s:color_bg)
" call s:hi("StatusLineTermNC", s:color_fg, s:color_bg)
call s:hi("TabLine", s:color_lvl_0, s:color_highlight)
call s:hi("TabLineFill", s:color_fg, s:color_bg)
call s:hi("TabLineSel", s:color_fg, s:color_bg)
call s:hi("Terminal", s:color_fg, s:color_bg)
call s:hi("Title", s:color_fg, s:color_bg)
call s:hi("Visual", s:color_lvl_0, s:color_selection)
call s:hi("VisualNOS", s:color_lvl_0, s:color_selection)
call s:hi("WarningMsg", s:color_error, s:color_bg)
call s:hi("WildMenu", s:color_lvl_0, s:color_highlight)
" call s:hi("Menu", s:color_fg, s:color_bg)
" call s:hi("Scrollbar", s:color_fg, s:color_bg)
" call s:hi("Tooltip", s:color_fg, s:color_bg)

" syntax
" keywords should take lesser priority
call s:hi("Identifier", s:color_lvl_1, s:color_bg)
call s:hi("Function", s:color_lvl_1, s:color_bg)
call s:hi("Statement", s:color_lvl_1, s:color_bg)
call s:hi("Conditional", s:color_lvl_1, s:color_bg)
call s:hi("Repeat", s:color_lvl_1, s:color_bg)
call s:hi("Label", s:color_lvl_1, s:color_bg)
call s:hi("Operator", s:color_lvl_1, s:color_bg)
call s:hi("Keyword", s:color_lvl_1, s:color_bg)

call s:hi("Type", s:color_lvl_2, s:color_bg)
call s:hi("StorageClass", s:color_lvl_2, s:color_bg)
call s:hi("Structure", s:color_lvl_2, s:color_bg)
call s:hi("Typedef", s:color_lvl_2, s:color_bg)

call s:hi("Exception", s:color_highlight, s:color_bg)
call s:hi("PreProc", s:color_highlight, s:color_bg)
call s:hi("Include", s:color_highlight, s:color_bg)
call s:hi("Define", s:color_highlight, s:color_bg)
call s:hi("Macro", s:color_highlight, s:color_bg)
call s:hi("PreCondit", s:color_highlight, s:color_bg)

call s:hi("Special", s:color_highlight, s:color_bg)
call s:hi("SpecialChar", s:color_highlight, s:color_bg)
call s:hi("Tag", s:color_highlight, s:color_bg)
call s:hi("Delimiter", s:color_highlight, s:color_bg)
call s:hi("SpecialComment", s:color_highlight, s:color_bg)
call s:hi("Debug", s:color_highlight, s:color_bg)

call s:hi("Comment", s:color_comment, s:color_bg)

call s:hi("Constant", s:color_lvl_4, s:color_bg)
call s:hi("String", s:color_lvl_4, s:color_bg)
call s:hi("Character", s:color_lvl_4, s:color_bg)
call s:hi("Number", s:color_lvl_4, s:color_bg)
call s:hi("Boolean", s:color_lvl_4, s:color_bg)
call s:hi("Float", s:color_lvl_4, s:color_bg)

call s:hi("Todo", s:color_highlight, s:color_bg)

" Plugin overwrite
" ------------------

" NERDTree
call s:hi("NERDTreeCWD", s:color_error, s:color_none)
call s:hi("NERDTreeDir", s:color_lvl_3, s:color_none)
call s:hi("NERDTreeOpenable", s:color_lvl_5, s:color_none)
call s:hi("NERDTreeClosable", s:color_lvl_5, s:color_none)

"ALE
call s:hi("ALEErrorSign", s:color_error, s:color_none)
call s:hi("ALEWarningSign", s:color_lvl_4, s:color_none)
call s:hi("SignColumn", s:color_none, s:color_bg)

" Language overwrtie
" --------------------

" Vim
call s:hi("vimCommand", s:color_lvl_4, s:color_bg)
call s:hi("vimOption", s:color_highlight, s:color_bg)

" JS
" pangloss/vim-javascript
call s:hi("jsNoise", s:color_lvl_4, s:color_bg)
call s:hi("jsOperator", s:color_lvl_4, s:color_bg)
call s:hi("jsParensError", s:color_error, s:color_bg)

call s:hi("jsVariableDef", s:color_lvl_3, s:color_bg)
call s:hi("jsFuncCall", s:color_lvl_4, s:color_bg)
call s:hi("jsFuncName", s:color_lvl_4, s:color_bg)
call s:hi("jsFuncArgs", s:color_lvl_3, s:color_bg)

call s:hi("jsArrowFunction", s:color_lvl_3, s:color_bg)

call s:hi("jsObjectProp", s:color_lvl_3, s:color_bg)
call s:hi("jsObjectKey", s:color_highlight, s:color_bg)
call s:hi("jsObjectColon", s:color_lvl_2, s:color_bg)

call s:hi("jsNull", s:color_lvl_5, s:color_bg)
call s:hi("jsThis", s:color_lvl_5, s:color_bg)

call s:hi("jsDocTags", s:color_lvl_2, s:color_bg)
call s:hi("jsDocType", s:color_lvl_3, s:color_bg)
call s:hi("jsDocParam", s:color_lvl_4, s:color_bg)

" CSS
call s:hi("cssClassName", s:color_lvl_5, s:color_bg)
call s:hi("cssIdentifier", s:color_highlight, s:color_bg)
call s:hi("cssTagName", s:color_lvl_3, s:color_bg)
call s:hi("cssProp", s:color_lvl_2, s:color_bg)

"SCSS/SASS
call s:hi("scssComment", s:color_comment, s:color_bg)
call s:hi("sassComment", s:color_comment, s:color_bg)

" JSON
call s:hi("jsonKeyword", s:color_highlight, s:color_bg)
