set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

"" Theme
syntax enable                             " Enable syntax processing
set background=dark                       " Dark background for the theme

"" General
set number                                " Show line numbers
set linebreak                             " Break lines at word (requires Wrap lines)
set showbreak=+++                         " Wrap-broken line prefix
set textwidth=100                         " Line wrap (number of cols)
set showmatch                             " Highlight matching brace
set visualbell                            " Use visual bell (no beeping)

set hlsearch                              " Highlight all search results
set smartcase                             " Enable smart-case search
set ignorecase                            " Always case-insensitive
set incsearch                             " Searches for strings incrementally

set autoindent                            " Auto-indent new lines
set expandtab                             " Use spaces instead of tabs
set shiftwidth=4                          " Number of auto-indent spaces
set smartindent                           " Enable smart-indent
set smarttab                              " Enable smart-tabs
set tabstop=4                             " Number of spaces per Tab
set softtabstop=4                         " Number of spaces per Tab when editing
set showcmd                               " Show command in bottom bar
set cursorline                            " Highlight current line
set wildmenu                              " Visual autocomplete for command menu

"" Advanced
set ruler                                 " Show row and column ruler information
set undolevels=1000                       " Number of undo levels
set backspace=indent,eol,start            " Backspace behaviour

"" Clipboard compartido
set clipboard=unnamed

"" Key maps
inoremap jk <esc>l

Plugin 'itchyny/lightline.vim'
set laststatus=2
