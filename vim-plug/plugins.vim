" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
"Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
"Text objects plugins
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-function'
Plug 'rhysd/vim-textobj-clang'
Plug 'michaeljsmith/vim-indent-object'
Plug 'Julian/vim-textobj-variable-segment'

Plug 'rhysd/clever-f.vim'
Plug 'jeetsukumaran/vim-pythonsense'
Plug 'junegunn/vim-easy-align'
Plug 'tommcdo/vim-exchange'
Plug 'libclang-vim/libclang-vim'
Plug 'tpope/vim-surround'
Plug 'machakann/vim-highlightedyank'
Plug 'preservim/nerdcommenter'
Plug 'justinmk/vim-sneak'
if exists('g:vscode')
  Plug 'asvetliakov/vim-easymotion'
endif

if !exists('g:vscode')
  " Plug 'frazrepo/vim-rainbow'
  " C++ related plugins
  Plug 'jackguo380/vim-lsp-cxx-highlight'
  Plug 'vim-syntastic/syntastic'
  Plug 'rhysd/vim-clang-format'
  " ------------------
"  Plug 'tpope/vim-eunuch'
  Plug 'vim-scripts/bash-support.vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-apathy'
  Plug 'raghur/vim-ghost', {'do': ':GhostInstall'}
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-dadbod'
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-fugitive'
  Plug 'mhinz/vim-startify'
  Plug 'ap/vim-css-color'
  Plug 'tpope/vim-fugitive'
  Plug 'tomasiser/vim-code-dark'
  Plug 'sheerun/vim-polyglot'
  Plug 'scrooloose/NERDTree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'joshdick/onedark.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'
  Plug 'whatyouhide/vim-gotham'
endif
call plug#end()
autocmd VimEnter *
      \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \|   PlugInstall --sync | q
      \| endif
