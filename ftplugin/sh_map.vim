" ftplugin/sh_map.vim - mappings for sh/bash source files
" Language:     sh
" Maintainer:   Jeff Pitblado <jpitblado@stata.com>
" Last Change:  09aug2014

if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

" insert/remove double bang comment line
nnoremap <buffer> <localleader>c 0i# !!rm <esc>0j
nnoremap <buffer> <localleader>C 07xj

" insert line of text for debugging
nnoremap <buffer> <localleader>xd Oecho "!!rm: 0: xx is \|$xx\|\n"<esc>

" end: ftplugin/sh_map.vim
