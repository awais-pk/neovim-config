"normal mode
inoremap jk <esc>
inoremap kj <esc>
"easymotion
"move cursor to top and bottom of window
nnoremap <S-j> <S-l>
nnoremap <S-U> <S-H>
"for time and date
nmap <F3> i<C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y-%m-%d %a %I:%M %p")<CR>

"pop-up memu mapping
inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <C-j>      pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k>      pumvisible() ? "\<C-p>" : "\<Up>"

if !exists('g:vscode')
  " nnoremap J :%DB mysql://awais@localhost<CR>
  nnoremap L :bnext<CR>
  nnoremap H :bprevious<CR>
  nnoremap k gk
  nnoremap gk k
  nnoremap j gj
  nnoremap gj j
  nnoremap <Leader>s :source $MYVIMRC
endif
