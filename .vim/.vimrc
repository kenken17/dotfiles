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

" For IDE
"--------
Plug 'scrooloose/nerdtree'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'vim-airline/vim-airline'
Plug 'christoomey/vim-tmux-navigator'

" For Workflow
"-------------
Plug 'ctrlpvim/ctrlp.vim'
Plug 'cohama/agit.vim'
Plug 'sodapopcan/vim-twiggy'
Plug 'lambdalisue/gina.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'romainl/vim-qf'
Plug 'whiteinge/diffconflicts'
Plug 'dyng/ctrlsf.vim'

" For Coding & Syntaxing
"-----------------------
Plug 'doums/coBra'
Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'tomtom/tcomment_vim'
" Plug 'AndrewRadev/splitjoin.vim'
Plug 'mg979/vim-visual-multi'
Plug 'Jorengarenar/vim-SQL-UPPER'
" Plug 'chrisbra/csv.vim'

" Tools & Utilities
"-----------------------
Plug 'mhinz/vim-startify'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'kamykn/spelunker.vim'
Plug 'scrooloose/vim-slumlord'
Plug 'janko/vim-test'
Plug 'benmills/vimux'
" Plug 'puremourning/vimspector'
" Plug 'tweekmonster/startuptime.vim'

" For Coc
"----
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Inline install
" --------------
" coc-css coc-db coc-docker coc-eslint coc-html coc-java coc-java-debug coc-json coc-lists coc-prettier coc-sh coc-snippets coc-sql coc-stylelint coc-tsserver coc-vetur coc-webpack coc-yaml coc-python

call plug#end()

source $HOME/.vim/setup/coc.vim
source $HOME/.vim/setup/autocmd.vim
source $HOME/.vim/setup/mappings.vim
source $HOME/.vim/setup/base/plugins.vim
source $HOME/.vim/setup/plugins.vim

