" For native settings/options
"----------------------------
set nobackup
set nowb
set noswapfile
set showcmd
set path+=**
set wildmenu
set wildignore+=.git/*,.hg/*,.svn/*
set wildignore+=**/node_modules/**,**/build/**,**/coverage/**,**/*.swp,**/*.svg,
set wildignore+=**/*.jpg,**/*.gif,**/*.png
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set autoread
set foldenable
set foldmethod=indent   " fold based on syntax level
set foldlevel=99
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set ruler
set nowrap
set cursorline
set number
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw " Don't redraw while executing macros (good performance config)
set magic
set showmatch
set laststatus=2
set background=dark
set omnifunc=syntaxcomplete#Complete
syntax enable " Enable syntax processing

