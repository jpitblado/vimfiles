" ftplugin/perl_map.vim - mappings for Perl source files
" Language:     Perl
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
nnoremap <buffer> <localleader>xd Oprint "!!rm: 0: xx is \|$xx\|\n" ;<esc>

" debug early exit
nnoremap <buffer> <localleader>ee mpoexit 1; #!!rm<cr><esc>'p

" end: ftplugin/perl_map.vim
