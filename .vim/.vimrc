set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')
" For IDE
"--------
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'

" For Coding & Syntaxing
"-----------------------
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'cohama/agit.vim'
Plug 'godlygeek/tabular'
Plug 'tomtom/tcomment_vim'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'lambdalisue/gina.vim'

" For Tim Pope
"-------------
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'

call plug#end()

filetype plugin indent on    " required

" For color and theme
"--------------------

" set termguicolors
set t_Co=256
" colorscheme material-monokai
colorscheme minimal

" For autocmd
"------------

" :W sudo saves the file
command W w !sudo tee % > /dev/null

"" Open log in quicklist window
autocmd QuickFixCmdPost *grep* cwindow

" Clear white spaces when file save, no need if we have autoformat installed
autocmd BufWritePre * %s/\s\+$//e

" Rememeber all file curosr position
autocmd BufWinLeave *.* silent mkview!
autocmd BufWinEnter *.* silent loadview

source $HOME/.vim/setup/natives.vim
source $HOME/.vim/setup/mappings.vim
source $HOME/.vim/setup/typos.vim
source $HOME/.vim/setup/types.vim
source $HOME/.vim/setup/plugins.vim

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
