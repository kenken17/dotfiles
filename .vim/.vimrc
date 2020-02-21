set nocompatible
filetype off

source $HOME/.vim/setup/base/natives.vim
source $HOME/.vim/setup/base/mappings-switch.vim
source $HOME/.vim/setup/base/mappings.vim
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

" By Tim Pope
"-------------
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'

" For IDE
"--------
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'
Plug 'Yggdroot/indentLine'

" For Coding & Syntaxing
"-----------------------
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'cohama/agit.vim'
Plug 'godlygeek/tabular'
Plug 'tomtom/tcomment_vim'
Plug 'lambdalisue/gina.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'janko/vim-test'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Coc
"----
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-lists', { 'do': 'yarn'}
Plug 'neoclide/coc-json', { 'do': 'yarn'}
Plug 'neoclide/coc-vetur', { 'do': 'yarn'}

" Inline install
" --------------
" coc-eslint
" coc-tsserver
" coc-snippets

call plug#end()

source $HOME/.vim/setup/coc.vim
source $HOME/.vim/setup/mappings.vim
source $HOME/.vim/setup/plugins.vim

