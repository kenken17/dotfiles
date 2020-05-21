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

" All Tim Pope
"-------------
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-dadbod'

" For IDE
"--------
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'christoomey/vim-tmux-navigator'

" For Coding & Syntaxing
"-----------------------
Plug 'ctrlpvim/ctrlp.vim'
Plug 'doums/coBra'
Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'cohama/agit.vim'
Plug 'godlygeek/tabular'
Plug 'tomtom/tcomment_vim'
Plug 'lambdalisue/gina.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'romainl/vim-qf'
Plug 'aserebryakov/vim-todo-lists'
Plug 'unblevable/quick-scope'
Plug 'AndrewRadev/splitjoin.vim'
" Plug 'puremourning/vimspector'

" Coc
"----
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Inline install
" --------------
" coc-css
" coc-db        // for vim-dadbod
" coc-docker
" coc-eslint
" coc-html
" coc-java
" coc-json
" coc-lists
" coc-prettier
" coc-sh
" coc-snippets
" coc-sql
" coc-stylelint
" coc-tsserver
" coc-vetur
" coc-webpack
" coc-yaml

call plug#end()

source $HOME/.vim/setup/coc.vim
source $HOME/.vim/setup/autocmd.vim
source $HOME/.vim/setup/mappings.vim
source $HOME/.vim/setup/mappings-switch.vim
source $HOME/.vim/setup/base/plugins.vim
source $HOME/.vim/setup/plugins.vim

