" For native settings/options
"----------------------------
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c
set signcolumn=yes
set nowb
set noswapfile
set showcmd
set path+=**
set wildignore+=.git\*,.hg\*,.svn\*
set wildignore+=**\node_modules\**,**\build\**,**\coverage\**,**\*.swp,**\*.svg,**\*.un~
set wildignore+=**\*.jpg,**\*.gif,**\*.png
set whichwrap+=<,>,h,l
set foldenable
set foldmethod=indent   " fold based on syntax level
set foldlevel=99
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set nowrap
set cursorline
" set colorcolumn=160
set number
set ignorecase
set smartcase
set hlsearch
set lazyredraw " Don't redraw while executing macros (good performance config)
set magic
set showmatch
set omnifunc=syntaxcomplete#Complete
set viewoptions=folds,cursor
set sessionoptions=folds
set undofile
set exrc
set secure
set diffopt=vertical

syntax enable
filetype plugin indent on

