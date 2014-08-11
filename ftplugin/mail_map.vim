" ftplugin/mail_map.vim - mappings for mail files
" Language:     Mail
" Maintainer:   Jeff Pitblado <jpitblado@stata.com>
" Last Change:  09aug2014

if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

" indent the lines in the current paragraph with "> "
nnoremap <buffer> ;> mp}mq'p :.,'qs/^/> /<cr>xx:nohlsearch<cr>

" indent the lines in the current paragraph with "<tab>"
nnoremap <buffer> ;<tab> mp}mq'p :.,'qs/^/	/<cr>x:nohlsearch<cr>

" END
