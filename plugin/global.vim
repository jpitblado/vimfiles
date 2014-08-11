" .exrc -- my global mappings.
" Maintainer:	Jeff Pitblado <jpitblado@stata.com>
" Last Change:	09aug2014

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" control key mappings

" make windows equal in dimension
nnoremap <C-E> <C-W>=
" switching between windows
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ; mappings

" replace character with 'd' then go down one line
nnoremap ;; rdj

" paragraph fill
"   to a line with no word characters
nnoremap ;f mp/^\W*$/<cr>mq'pgq'q:nohlsearch<cr>
nnoremap ;g :set textwidth=72<cr>mp/^\W*$/<cr>mq'pgq'q:nohlsearch<cr>:set textwidth=78<cr>
"   to the end of a paragraph, more specific than ;f
nnoremap ;q gq}

" switching between buffers
nnoremap ;n :next<cr>
nnoremap ;N :Next<cr>

" hide/unhide
nnoremap ;h :hide<cr>
nnoremap ;H :unhide<cr>

" spell checking the current buffer
nnoremap ;spell :setlocal spell spelllang=en_us<cr>
nnoremap ;nospell :setlocal nospell<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" other global maps

" sort the following lines down to the next blank line
nnoremap ,so ma}kmb'a:.,'b!sort<cr>'b
nnoremap ,su ma}kmb'a:.,'b!sort -u<cr>'b
nnoremap ,s$ :.,$!sort<cr>
nnoremap ,s% :%!sort<cr>

" make a character line (almost) the width of a typcial page
nnoremap ,-- o<esc>77i-<esc>0
nnoremap ,== o<esc>77i=<esc>0

" turn off search highlights
nnoremap ,nn :nohlsearch<cr>

" insert the date
" e.g.: 07jan2002
nnoremap ,dd :r !date '+\%d\%b\%Y'<cr>02lgul0k
nnoremap ,nd :r !date '+\%Y-\%m-\%d'<cr>02lgul0k

" column ruler
nnoremap ,nl o----+----1----+----2----+----3----+----4----+----5----+----6----+----7----+----<esc>0

" end: .exrc
