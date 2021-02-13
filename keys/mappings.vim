inoremap jk <esc>
inoremap kj <esc>

inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <C-j>      pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k>      pumvisible() ? "\<C-p>" : "\<Up>"

  nnoremap L :bnext<CR>
  nnoremap H :bprevious<CR>
  nnoremap k gk
  nnoremap gk k
  nnoremap j gj
  nnoremap gj j
  nnoremap <Leader>s :source $MYVIMRC
