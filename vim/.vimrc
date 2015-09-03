" VIM Configuration File
" Description: Optimized for C/C++ development, but useful also for other things.
" Author: Gerhard Gappmeier
"
" auto reload .vimrc when changed, this avoids reopening vim
" disable vi compatibility (emulation of old bugs)
set nocompatible
filetype off                  " required

" call pathogen#infect()
" call pathogen#helptags()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

Plugin 'Valloric/YouCompleteMe'
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
Plugin 'scrooloose/syntastic'
Plugin 'tell-k/vim-autopep8'
Plugin 'ntpeters/vim-better-whitespace'
" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-notes'
" All of your Plugins must be added before the following line
Plugin 'morhetz/gruvbox'
Plugin 'altercation/solarized'
Plugin 'bling/vim-airline'
call vundle#end()            " required
autocmd! bufwritepost .vimrc source %
" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set ignorecase
set smartcase
set incsearch
set nowrap
filetype indent plugin on
filetype indent on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set backspace=indent,eol,start
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
" set textwidth=80
" define ',' is leader key
let mapleader = ","
" turn syntax highlighting on
syntax on
" Make backspace working on Windows
if has("win32")
    set bs=2
endif
" show textwidth line
set colorcolumn=80
highlight ColorColumn ctermbg=236
" highlight all search results
set hlsearch
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
" use intelligent file completion like in the bash
set wildmode=longest:full
set wildmenu
" allow changeing buffers without saving them
set hidden
set tags=./tags,tags;$HOME
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
if has("gui_running")
	let moria_style='dark'
	colorscheme moria
   set guioptions-=T
   set guifont=Inconsolata\-g\ 12
else
   set t_Co=256
   map <silent> <PageUp> 1000<C-U>
   map <silent> <PageDown> 1000<C-D>
   imap <silent> <PageUp> <C-O>1000<C-U>
   imap <silent> <PageDown> <C-O>1000<C-D>
"   set term=builtin_ansi
	"let g:solarized_termcolors=256
	set background=dark
	colorscheme solarized
endif
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_confirm_extra_conf = 0
let g:syntastic_always_populate_loc_list = 1
let g:ycm_collect_identifiers_from_tags_files = 1
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
noremap  <C-]>  g<C-]>
