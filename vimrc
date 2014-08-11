" vimrc
" Maintainer:	Jeff Pitblado <jpitblado@stata.com>
" Last Change:	11aug2014

filetype plugin on	" turn filetype plugins on
set fileformat=unix	" Use UNIX <EOL>
set nocompatible	" Use Vim defaults (much better!)

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" [don't] keep a backup file
set nobackup

" read/write a .viminfo file
" remember marks for the last 20 files
" don't store more than 50 lines of registers
" use ~/.viminfo to for the viminfo filename
set viminfo='20,\"50,n~/.viminfo

" keep 150 lines of command line history
set history=150

" show the cursor position all the time
set ruler

" show the edit mode
set showmode

" Incremental searching
set incsearch

" special character interpretation
set magic

" threshold for reporting numer of lines changed
set report=1

" visual bell
set visualbell

" no error bells
set noerrorbells

" show editing commands
set showcmd

" status line
set laststatus=2

" 78 columns to a line
set textwidth=78

" I like to just switch into a tab if it already exists
set switchbuf=usetab

" Only do this part when compiled with support for autocommands
if version >= 600
if has("autocmd")
	" In text files, always limit the width of text to 78 characters
	autocmd BufRead *.txt set tw=78
	" When editing a file, always jump to the last known cursor position.
	" Don't do it when the position is invalid or when inside an event
	" handler (happens when dropping a file on gvim).
	autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
endif
endif

" C formatting style
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case,foreach,forval
set formatoptions=tcqr

" (smart?) indentation
set autoindent
set nocindent

" treat /bin/sh scripts as /bin/bash scripts
let bash_is_sh = 1

" use ',' as <leader> for global mappings
let mapleader = ","
" use ';' as <localleader> for local mappings
let maplocalleader = ";"

" change foreground and background colors
highlight Normal guibg=Black guifg=White
set background=dark

if has("syntax")
	" syntax highlighting
	syntax on

	" Highlight searched items
	set hlsearch
endif

" Don't use Ex mode, use Q for formatting
nnoremap Q gq

" turn off netrw history/bookmarks
let g:netrw_dirhistmax = 0

" load all plugins using pathogen
execute pathogen#infect()

" end: vimrc
