" ftplugin/tex_map.vim - mappings for TeX source files
" Language:     TeX
" Maintainer:   Jeff Pitblado <jpitblado@stata.com>
" Last Change:  12oct2014

if exists("b:did_ftplugin")
	finish
endif
let b:did_ftplugin = 1

" insert/remove double bang comment line
nnoremap <buffer> <localleader>c 0i% !!rm <esc>0j
nnoremap <buffer> <localleader>C 07xj

" run LaTeX on current buffer
nnoremap <buffer> <localleader>lb :! latex %<cr>

" run TeX on current buffer
nnoremap <buffer> <localleader>tb :! tex %<cr>

" split to buffer with corresponding [La]TeX log
nnoremap <buffer> <localleader>ll :split `basename % .tex`.log<cr>

" view using open on Mac
nnoremap <buffer> <localleader>mv :! open `basename % .tex`.pdf<cr>

" view using open on Linuax
nnoremap <buffer> <localleader>lv :! evince `basename % .tex`.pdf&<cr>

" end: ftplugin/tex_map.vim
