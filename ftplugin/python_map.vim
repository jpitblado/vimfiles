" ftplugin/python_map.vim - mappings for Perl source files
" Language:     Python
" Maintainer:   Jeff Pitblado <jpitblado@stata.com>
" Last Change:  20feb2018

if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

" I use '!!rm' in my debug output so it is easy to search for and remove later

" insert/remove double bang comment line
nnoremap <buffer> <localleader>c 0i# !!rm <esc>0j
nnoremap <buffer> <localleader>C 07xj

" insert line of text for debugging
nnoremap <buffer> <localleader>0 Oprint("!!rm: 0")<esc>
nnoremap <buffer> <localleader>xd Oprint("!!rm: 0: xx is %d" % xx)<esc>
nnoremap <buffer> <localleader>xf Oprint("!!rm: 0: xx is %f" % xx)<esc>
nnoremap <buffer> <localleader>xs Oprint("!!rm: 0: xx is %s" % xx)<esc>

" replace 'xx' in the current line with ...
nnoremap <buffer> <localleader>xx :s/xx/

" end: ftplugin/python_map.vim
