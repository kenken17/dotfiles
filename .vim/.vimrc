set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'vim-airline/vim-airline'

Plugin 'pangloss/vim-javascript'

Plugin 'craigemery/vim-autotag'

Plugin 'w0rp/ale'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'

Plugin 'jiangmiao/auto-pairs'

Plugin 'valloric/youcompleteme'

Plugin 'mattn/emmet-vim'

Plugin 'airblade/vim-gitgutter'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Plugin 'ternjs/tern_for_vim'

Plugin 'mileszs/ack.vim'

Plugin 'junegunn/goyo.vim'

Plugin 'posva/vim-vue'

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

let mapleader=","       " leader is comma

" Cancel all arrows key
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Quick way to edit vimrc
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Tern def
nnoremap <C-b> :TernDef<CR>

" fix typos
iabbr ture true
iabbr flase false
iabbr waht what

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

set showcmd             " show command in bottom bar

set path+=**

set wildmenu
set wildignore+=.git/*,.hg/*,.svn/*
set wildignore+=**/node_modules/**,**/build/**,**/coverage/**,**/*.swp,**/*.svg,
set wildignore+=**/*.jpg,**/*.gif,**/*.png

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Enable syntax processing
syntax enable

" Auto update the buffer
set autoread

" Set foldable
set foldenable
set foldmethod=indent   " fold based on syntax level
set foldlevel=99

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Mess with tabs/spaces
set softtabstop=4
set autoindent
set smartindent
set ruler
set nowrap

" no map for Ctrl-i
" unmap <C-i>

" Lines
set cursorline
set number

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets

"" Open log in quicklist window
autocmd QuickFixCmdPost *grep* cwindow

" Some personal shortcut mapping
" ==============================

" turn off the highlight
nnoremap <leader>/ :nohlsearch<CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" For jumping to high mid low
nnoremap H Hzz
nnoremap L Lzz

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Map pasting in inset mode always indent correctly
imap <C-r> <C-r><C-p>

" When a forward search, back to current search item
nmap * *N

" Add a , above end of line
nmap <leader>, mpk$A,<ESC>`p
nmap <leader>; mpk$A;<ESC>`p

" Add in a quick console.log
map <leader>c Aconsole.log('>>>', );<ESC>hha

" When jump to next item opent he fold and center the screen
nmap n nzOzz

" For focus mode
map <leader>z :Goyo 160<cr>
" For showing in lightline

" ==============================

set laststatus=2

if !has('gui_running')
    set t_Co=256
endif

set background=dark
" set termguicolors
colorscheme material-monokai

" Clear white spaces when file save
autocmd BufWritePre * %s/\s\+$//e

" Emmet
let g:user_emmet_mode='iv'
" Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

map <F4> :NERDTreeFind<CR>
map <F5> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>

let NERDTreeShowHidden=1
let g:NERDTreeWinSize=40
let NERDTreeIgnore=['node_modules$', '\.git$', '\.DS_Store', '\.serverless$', '\.nyc_output$', 'coverage']

" vim-javascript setting
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

" For fzf
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

" For vue highlight
autocmd FileType vue syntax sync fromstart

" For ALE
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️-'
let g:ale_lint_on_text_changed = 'never'
