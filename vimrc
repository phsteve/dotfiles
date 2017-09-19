" best to put this on the first line
set nocompatible
set encoding=utf-8

""""""""""""""""""""
" Vundle packages
""""""""""""""""""""

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'mileszs/ack.vim'

Plugin 'jiangmiao/auto-pairs'

Plugin 'ervandew/supertab'

Plugin 'chase/vim-ansible-yaml'

Plugin 'scrooloose/nerdtree'

Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'altercation/vim-colors-solarized'

Plugin 'Valloric/YouCompleteMe'

Plugin 'bling/vim-airline'

Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-surround'

Plugin 'rodjek/vim-puppet'

Plugin 'wincent/Command-T'

Plugin 'lepture/vim-jinja'

" Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""
" Functionality
""""""""""""""""""""""""""""""""""""""""""""""""
" set console title to open file name
set title
" ignore case during searches unless capitals are used
set ignorecase smartcase
" BASH-style tab completion for filenames
set wildmenu wildmode=longest:full
" allow pasting from outside vim, disabling auto-indent and others
set pastetoggle=<F2>

set relativenumber
set number
" allow switching files and buffers without saving
set hidden
" automatically insert leading comment characters when pressing <enter> in insert mode
set formatoptions+=r
" keep 50 commands in history
set history=1000
" swap file directories
set backupdir=~/.vim/backup,.,~
set directory=~/.vim/backup,.,~

""""""""""""""""""""""""""""""""""""""""""""""""
" Display
""""""""""""""""""""""""""""""""""""""""""""""""
" show command being entered
set showcmd
" always show cursor
set ruler
" flash matching bracket on insert
set showmatch
" search as you type
set incsearch
" global search/replace by default
set gdefault
" highlight matched search pattern
set hlsearch
" keep cursor away from vertical edge of terminal
set scrolloff=4
" always display the status bar
set laststatus=2
" solarized colorscheme stuff
set background=dark
colorscheme solarized
""""""""""""""""""""""""""""""""""""""""""""""""
" Indenting
""""""""""""""""""""""""""""""""""""""""""""""""
" auto-indent
set smartindent
set indentkeys-=:
" allow backspacing over everything
set backspace=indent,eol,start
" four-character-wide tabs
set expandtab
set tabstop=4
set shiftwidth=4
"set re=1
" turn syntax highlighting on, if it is supported
if &t_Co > 2 || has("gui_running")
	syntax on
endif
" Relative numbers cause ruby and eruby files to be extremely laggy
autocmd FileType ruby setlocal ts=2 sts=2 sw=2 norelativenumber nocursorline
autocmd FileType eruby setlocal ts=2 sts=2 sw=2 norelativenumber nocursorline

autocmd FileType yaml setlocal ts=2 sts=2 sw=2
" flag problematic whitespace (trailing spaces and spaces before tabs)
highlight RedundantSpaces ctermbg=red
match RedundantSpaces /\s\+$\|[^\t]\zs\t\+\|\t\zs \+/ "\zs sets start of match so only tabs highlighted
" Ctrl-{direction} to scroll
" -up
map <C-k> <C-y>
map <C-up> <C-y>
imap <C-up> <C-o><C-y>
" -down
map <C-j> <C-e>
map <C-down> <C-e>
imap <C-down> <C-o><C-e>
" -left
map <C-left> 2zh
imap <C-left> <C-o>2zh
" -right
map <C-right> 2zl
imap <C-right> <C-o>2zl

" Get airline fonts to work
set guifont=Consolas\ for\ Powerline
let g:airline_powerline_fonts = 1
let g:airline_symbols = {}
let g:airline_left_sep = "\u2b80" "use double quotes here
let g:airline_left_alt_sep = "\u2b81"
let g:airline_right_sep = "\u2b82"
let g:airline_right_alt_sep = "\u2b83"
let g:airline_symbols.branch = "\u2b60"
let g:airline_symbols.readonly = "\u2b64"
let g:airline_symbols.linenr = "\u2b61"

" NerdTreeTabs settings
let g:nerdtree_tabs_open_on_console_startup = 1
let NERDTreeIgnore = ['\.pyc$']
