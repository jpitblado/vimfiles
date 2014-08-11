" ftplugin/vim_map.vim - mappings for Vim source files
" Language:     Vim
" Maintainer:   Jeff Pitblado <jpitblado@stata.com>
" Last Change:  09aug2014

if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

" insert/remove double bang comment line
nnoremap <buffer> <localleader>c 0i" !!rm <esc>0j
nnoremap <buffer> <localleader>C 07xj

" end: ftplugin/vim_map.vim
