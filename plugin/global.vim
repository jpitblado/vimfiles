" global.vim -- my global mappings.
" Maintainer:	Jeff Pitblado <jpitblado@stata.com>
" Last Change:	29jan2015

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" control key mappings

nnoremap <F2> :so map.vim<cr>
nnoremap <F9> :so ../map.vim<cr>

" make windows equal in dimension
nnoremap <C-E> <C-W>=
" switching between windows
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" global mappings

" replace character with 'd' then go down one line
nnoremap ;; rdj

" paragraph fill
"   to a line with no word characters
nnoremap <leader>f mp/^\W*$/<cr>mq'pgq'q:nohlsearch<cr>
nnoremap <leader>gg :set textwidth=72<cr>mp/^\W*$/<cr>mq'pgq'q:nohlsearch<cr>:set textwidth=78<cr>
"   to the end of a paragraph, more specific than ;f
nnoremap <leader>q gq}

" switching between buffers
nnoremap <leader>n :next<cr>
nnoremap <leader>N :Next<cr>

" hide/unhide
nnoremap <leader>h :hide<cr>
nnoremap <leader>H :unhide<cr>

" turn off search highlights
nnoremap <leader>nn :nohlsearch<cr>

" spell checking the current buffer
nnoremap <leader>spell :setlocal spell spelllang=en_us<cr>
nnoremap <leader>nospell :setlocal nospell<cr>

" paste setting
nnoremap <leader>p :setlocal paste<cr>
nnoremap <leader>P :setlocal nopaste<cr>

" sort the following lines down to the next blank line
nnoremap <leader>so ma}kmb'a:.,'b!sort<cr>'b
nnoremap <leader>su ma}kmb'a:.,'b!sort -u<cr>'b
nnoremap <leader>s1 ma}kmb'a:.,'b!sort -k1,1<cr>'b
nnoremap <leader>s$ :.,$!sort<cr>
nnoremap <leader>s% :%!sort<cr>

" make a character line (almost) the width of a typcial page
nnoremap <leader>-- o<esc>77i-<esc>0
nnoremap <leader>== o<esc>77i=<esc>0

" column ruler
nnoremap <leader>nl o----+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----<esc>0

" insert the date
" e.g.: 07jan2002
nnoremap <leader>dd :r !date '+\%d\%b\%Y'<cr>02lgul0k
nnoremap <leader>nd :r !date '+\%Y-\%m-\%d'<cr>02lgul0k

" end: global.vim
