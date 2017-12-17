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

Plugin 'w0rp/ale'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'

Plugin 'tomtom/tcomment_vim'

Plugin 'raimondi/delimitmate'

Plugin 'valloric/youcompleteme'

Plugin 'mattn/emmet-vim'

Plugin 'airblade/vim-gitgutter'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

Plugin 'majutsushi/tagbar'

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

" Unmap the arrow keys
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

nnoremap <TAB> >>
" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>

" fix typos
iabbr ture true
iabbr flase false

set nobackup    "Dont create bakcup file
set noswapfile  "Dont create the swap file

set nowrap

set showcmd             " show command in bottom bar

set path+=**

set wildmenu
set wildignore+=**/node_modules/**
set wildignore+=**/build/**
set wildignore+=**/coverage/**
set wildignore+=**/*.swp
set wildignore+=**/*.svg
set wildignore+=**/*.jpg
set wildignore+=**/*.gif
set wildignore+=**/*.png

" Enable syntax processing
syntax enable

" Set foldable
set foldenable
set foldmethod=syntax   " fold based on syntax level
set foldlevelstart=2
set foldnestmax=10      " 10 nested fold max

" space open/closes folds
nnoremap <space> zjzz
nnoremap <leader><space> zk

" Mess with tabs/spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent
set ruler

" Lines
set cursorline
set number

set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" turn off the highlight
nnoremap <leader>/ :nohlsearch<CR>

" For showing in lightline
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

map <F4> :NERDTreeFind<CR>
map <F5> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

let g:NERDTreeWinSize=40
let NERDTreeIgnore=['node_modules$', '\.git$', '\.DS_Store']

" vim-javascript setting
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

