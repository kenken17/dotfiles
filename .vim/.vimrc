set nocompatible
filetype off

source $HOME/.vim/setup/base/natives.vim
source $HOME/.vim/setup/base/mappings.vim
source $HOME/.vim/setup/base/mappings-operator.vim
source $HOME/.vim/setup/base/typos.vim
source $HOME/.vim/setup/base/types.vim
source $HOME/.vim/setup/base/autocmd.vim

" For color and theme
"--------------------

" set termguicolors
set t_Co=256
colorscheme minimal

hi Normal guibg=NONE ctermbg=NONE

if !has('nvim')
  set ttymouse=xterm2
endif

call plug#begin('~/.vim/plugged')

" All me
Plug 'kenken17/xopp.vim'

" All Tim Pope
"-------------
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-speeddating'

" For IDE
"--------
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'christoomey/vim-tmux-navigator'

" For OrgMode
"------------
Plug 'vim-scripts/SyntaxRange'
Plug 'mattn/calendar-vim'
Plug 'vim-scripts/utl.vim'
Plug 'jceb/vim-orgmode'

" For Workflow
"-------------
Plug 'ctrlpvim/ctrlp.vim'
Plug 'cohama/agit.vim'
Plug 'lambdalisue/gina.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'romainl/vim-qf'
Plug 'whiteinge/diffconflicts'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" For Coding & Syntaxing
"-----------------------
Plug 'doums/coBra'
Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'godlygeek/tabular'
Plug 'tomtom/tcomment_vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'AndrewRadev/splitjoin.vim'
Plug 'kamykn/spelunker.vim'
" Plug 'janko/vim-test'
" Plug 'puremourning/vimspector'
" Plug 'tweekmonster/startuptime.vim'

" For Coc
"----
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Inline install
" --------------
" coc-css coc-db coc-docker coc-eslint coc-html coc-java coc-json coc-lists coc-prettier coc-sh coc-snippets coc-sql coc-stylelint coc-tsserver coc-vetur coc-webpack coc-yaml

call plug#end()

source $HOME/.vim/setup/coc.vim
source $HOME/.vim/setup/autocmd.vim
source $HOME/.vim/setup/mappings.vim
source $HOME/.vim/setup/base/plugins.vim
source $HOME/.vim/setup/plugins.vim

