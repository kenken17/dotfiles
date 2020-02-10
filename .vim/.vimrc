set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" For Tim Pope
"-------------
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
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
Plug 'editorconfig/editorconfig-vim'
Plug 'sheerun/vim-polyglot'
Plug 'cohama/agit.vim'
Plug 'godlygeek/tabular'
Plug 'tomtom/tcomment_vim'
Plug 'lambdalisue/gina.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'janko/vim-test'

" Coc
"----
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-lists', { 'do': 'yarn'}
Plug 'neoclide/coc-pairs', { 'do': 'yarn'}
Plug 'neoclide/coc-json', { 'do': 'yarn'}
Plug 'neoclide/coc-snippets', { 'do': 'yarn'}
Plug 'neoclide/coc-vetur', { 'do': 'yarn'}

" Inline install
" --------------
" coc-eslint
" coc-tsserver

call plug#end()

" For color and theme
"--------------------

" set termguicolors
set t_Co=256
" colorscheme material-monokai
colorscheme minimal

" For autocmd
"------------

"" Open log in quicklist window
autocmd QuickFixCmdPost *grep* cwindow

" Clear white spaces when file save, no need if we have autoformat installed
autocmd BufWritePre * %s/\s\+$//e

source $HOME/.vim/setup/natives.vim
source $HOME/.vim/setup/mappings.vim
source $HOME/.vim/setup/mappings-switch.vim
source $HOME/.vim/setup/typos.vim
source $HOME/.vim/setup/types.vim
source $HOME/.vim/setup/plugins.vim
source $HOME/.vim/setup/coc.vim

hi Normal guibg=NONE ctermbg=NONE

" Change the folder text
set fillchars="fold: "
function! MyFoldText()
    let endLine = getline(v:foldend)
    let end = substitute(endLine, '\s', '', 'g')
    return getline(v:foldstart) .' ... ' .end
endfunction
set foldtext=MyFoldText()

" insert mode should change the cursor
let &t_SI.="\e[5 q"
let &t_SR.="\e[6 q"
let &t_EI.="\e[1 q"

if !has('nvim')
  set ttymouse=xterm2
endif

" Rememeber all file curosr position
autocmd BufWinLeave *.* silent! mkview!
autocmd BufWinEnter *.* silent! loadview

