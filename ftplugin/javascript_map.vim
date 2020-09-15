" ftplugin/javascript_map.vim - mappings for javascript source files
" Language:     javascript
" Maintainer:   Jeff Pitblado <jpitblado@stata.com>
" Last Change:  15sep2020

if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

" insert/remove double bang comment line
nnoremap <buffer> <localleader>c 0i//!!rm <esc>0j
nnoremap <buffer> <localleader>C 07xj

" insert line of text for debugging
nnoremap <buffer> <localleader>0 Oconsole.log("!!rm: 0 ")<esc>
nnoremap <buffer> <localleader>xd Oconsole.log("!!rm: 0: xx is " + xx)<esc>

" end: ftplugin/javascript_map.vim
