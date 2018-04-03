set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" For IDE
"--------
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'craigemery/vim-autotag'
Plugin 'airblade/vim-gitgutter'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'mileszs/ack.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'maxbrunsfeld/vim-yankstack'

" For Coding & Syntaxing
"-----------------------
Plugin 'pangloss/vim-javascript'
Plugin 'posva/vim-vue'
Plugin 'w0rp/ale'
Plugin 'mattn/emmet-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'valloric/youcompleteme'
Plugin 'alvan/vim-closetag'

" For Tim Pope
"-------------
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'

" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"


" leader is comma
let mapleader=","


" For all common typos
"---------------------
iabbr ture true
iabbr flase false
iabbr waht what


" For native settings/options
"----------------------------
set nobackup
set nowb
set noswapfile
set showcmd
set path+=**
set wildmenu
set wildignore+=.git/*,.hg/*,.svn/*
set wildignore+=**/node_modules/**,**/build/**,**/coverage/**,**/*.swp,**/*.svg,
set wildignore+=**/*.jpg,**/*.gif,**/*.png
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set autoread
set foldenable
set foldmethod=indent   " fold based on syntax level
set foldlevel=99
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set ruler
set nowrap
set cursorline
set number
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw " Don't redraw while executing macros (good performance config)
set magic
set showmatch
set laststatus=2
set background=dark
set omnifunc=syntaxcomplete#Complete
syntax enable " Enable syntax processing


" For color and theme
"--------------------

" set termguicolors
colorscheme material-monokai

if !has('gui_running')
    set t_Co=256
endif


" For autocmd
"------------

" :W sudo saves the file
command W w !sudo tee % > /dev/null

"" Open log in quicklist window
autocmd QuickFixCmdPost *grep* cwindow

" Clear white spaces when file save
autocmd BufWritePre * %s/\s\+$//e


" Some personal shortcut mapping
"-------------------------------

" For auto-closing the html tag
iabbrev </ </<c-x><c-o>

" turn off the highlight
map <leader>/ :nohlsearch<cr>

" Add a ,/; above end of line
nmap <leader>, mpk$A,<esc>`p
nmap <leader>; mpk$A;<esc>`p

" For focus mode
map <leader>z :Goyo 160<cr>

" For cycle the yanks/deletes
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

" Smart way to move between windows
map <c-j> <c-W>j
map <c-k> <c-W>k
map <c-h> <c-W>h
map <c-l> <c-W>l

" For jumping to high mid low
nnoremap H Hzz
nnoremap L Lzz
nnoremap n nzOzz

" Map pasting in inset mode always indent correctly
imap <c-r> <c-r><c-p>

" When a forward search, back to current search item
nmap * *N


" For all filetype specific settings
"-----------------------------------

augroup filetype_vim
    au!
    au FileType vim setlocal foldmethod=marker
augroup END

augroup filetype_javascript
    au!
    au FileType javascript setlocal foldmethod=syntax

    " Add in a quick console.log
    au FileType javascript map <leader>c Aconsole.log('>>>', );<esc>hha
augroup END

augroup filetype_vue
    au!
    au FileType vue syntax sync fromstart

    " Add in a quick console.log
    au FileType vue map <leader>c Aconsole.log('>>>', );<esc>hha
augroup END

augroup filetype_emmet
    au!
    au FileType vue,html,css EmmetInstall
augroup END


" For all plugins settings
"-------------------------

" mattn/emmet-vim
let g:user_emmet_mode='iv'
" Enable just for html/css
let g:user_emmet_install_global = 0

" scrooloose/nerdtree
map <F4> :NERDTreeFind<CR>
map <F5> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>

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
