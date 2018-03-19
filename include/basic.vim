scriptencoding utf-8

set shell=/bin/bash

" General
set autoread              " reload changes from disk
set autowriteall          " Writes on make/shell commands
set hidden                " Allow buffer switching without saving
set iskeyword+=$,@,-      " Add extra characters that are valid parts of variables
set lazyredraw            " Wait until actions are done to re-render text
set linespace=0           " No extra spaces between rows
set matchtime=1           " Time to show the match for
set nowrap                " Do not wrap long lines
set number                " Show line numbers
set report=0              " Always report changed lines
set scrolloff=5           " Minumum lines to keep above and below cursor
set showmatch             " Show matching brackets/parentthesis
set splitright            " Vertical splits to the right
set termguicolors         " Enable true colors in terminal
set updatetime=100        " Update swap file and CursorHold delay

set ignorecase            " Case insensitive search
set smartcase             " ... but case sensitive when uc present

" Mouse
set mouse=a               " Mouse enabled in all modes
set mousehide             " Hide the mouse cursor while typing

" Completion
set pumheight=20          " Avoid the pop up menu occupying the whole screen
set completeopt=menu,noinsert,noselect

" Indentation
set expandtab             " Tabs are spaces, not tabs
set shiftwidth=2          " Use indents of 2 spaces
set softtabstop=2         " Let backspace delete indent
set tabstop=2             " An indentation every four columns

set undofile              " Persistent undo
set undolevels=1000       " Maximum number of changes that can be undone
set undoreload=10000      " Maximum number lines to save for undo on a buffer reload

" Command mode
set showmode              " Show current mode in command-line
set wildmode=list:longest " Use emacs-style tab completion in command mode

set fillchars=vert:│,stl:\ ,stlnc:\ 

" Encoding & file formats
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set fileformats=unix,dos,mac
set termencoding=utf-8
set viewoptions=cursor,folds,slash,unix

" Backups
set directory=/tmp//,.
set backupdir=/tmp//,.

" Folds
set foldenable
set foldmarker={,}
set foldlevel=0
set foldmethod=marker
set foldlevelstart=99

" Mimic behavior from D, C
nnoremap Y y$

vnoremap < <gv
vnoremap > >gv

augroup config#basic
  autocmd!
  " Reload file on focus
  autocmd FocusGained * :checktime
  " Don't format when adding lines with o/O
  autocmd BufNewFile,BufEnter * set formatoptions-=o
augroup END
