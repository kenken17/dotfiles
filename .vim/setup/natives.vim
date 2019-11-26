" For native settings/options
"----------------------------
" set colorcolumn=160
" set showcmd
" set hlsearch
set cursorline
set diffopt=vertical
set expandtab
set exrc
set foldenable
set foldlevel=99
set foldmethod=indent   " fold based on syntax level
set hidden
set ignorecase
set lazyredraw " Don't redraw while executing macros (good performance config)
set magic
set nobackup
set noswapfile
set nowb
set nowrap
set nowritebackup
set number
set omnifunc=syntaxcomplete#Complete
set path+=**
set secure
set sessionoptions=folds
set shiftwidth=2
set shortmess+=c
set showmatch
set signcolumn=yes
set smartcase
set softtabstop=2
set tabstop=2
set undofile
set updatetime=300
set viewoptions=folds,cursor
set whichwrap+=<,>,h,l
set wildignore+=**\*.jpg,**\*.gif,**\*.png
set wildignore+=**\node_modules\**,**\build\**,**\coverage\**,**\*.swp,**\*.svg,**\*.un~
set wildignore+=.git\*,.hg\*,.svn\*

" syntax enable
" filetype plugin indent on

" For Ag
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  "
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  if !exists(":Ag")
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

  endif
endif
