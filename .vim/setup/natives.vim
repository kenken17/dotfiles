" For native settings/options
"----------------------------
set nobackup
set nowb
set noswapfile
set showcmd
set path+=**
set wildignore+=.git/*,.hg/*,.svn/*
set wildignore+=**/node_modules/**,**/build/**,**/coverage/**,**/*.swp,**/*.svg,
set wildignore+=**/*.jpg,**/*.gif,**/*.png
set whichwrap+=<,>,h,l
set foldenable
set foldmethod=indent   " fold based on syntax level
set foldlevel=99
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set nowrap
set cursorline
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
syntax enable " Enable syntax processing

