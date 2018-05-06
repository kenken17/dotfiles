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
Plugin 'mileszs/ack.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin '907th/vim-auto-save'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ryanoasis/vim-devicons'
Plugin 'christoomey/vim-tmux-navigator'

" For Coding & Syntaxing
"-----------------------
Plugin 'pangloss/vim-javascript'
Plugin 'posva/vim-vue'
Plugin 'w0rp/ale'
Plugin 'ervandew/supertab'
Plugin 'Valloric/MatchTagAlways'
Plugin 'craigemery/vim-autotag'
Plugin 'jiangmiao/auto-pairs'
Plugin 'cohama/agit.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" For Tim Pope
"-------------
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'

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

" For color and theme
"--------------------

" set termguicolors
set t_Co=256
colorscheme material-monokai

" For autocmd
"------------

" :W sudo saves the file
command W w !sudo tee % > /dev/null

"" Open log in quicklist window
autocmd QuickFixCmdPost *grep* cwindow

" Clear white spaces when file save, no need if we have autoformat installed
" autocmd BufWritePre * %s/\s\+$//e

" Open then nerdtree when a new file open.
autocmd BufReadPre,FileReadPre * NERDTreeFind | wincmd p

" Rememeber all file curosr position
autocmd BufWinLeave ?* silent mkview!
autocmd BufWinEnter ?* silent loadview

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
