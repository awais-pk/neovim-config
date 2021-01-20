 source $HOME/.config/nvim/vim-plug/plugins.vim
 source $HOME/.config/nvim/keys/mappings.vim
 source $HOME/.config/nvim/general/vscode.vim
 source $HOME/.config/nvim/plug-config/vim-highlight.vim
 source $HOME/.config/nvim/plug-config/matchit.vim
 source $HOME/.config/nvim/plug-config/textObjectUser.vim
 source $HOME/.config/nvim/plug-config/general.vim
 source $HOME/.config/nvim/plug-config/sneak.vim
 if !exists('g:vscode')
   "  source $HOME/.config/nvim/plug-config/rainbow.vim
   source $HOME/.config/nvim/general/settings.vim
   source $HOME/.config/nvim/plug-config/coc.vim
   source $HOME/.config/nvim/themes/onedark.vim
   source $HOME/.config/nvim/themes/airline.vim
   source $HOME/.config/nvim/plug-config/start-screen.vim
   source $HOME/.config/nvim/plug-config/nerdcommenter.vim
   " source $HOME/.config/nvim/plug-config/cpp_highlight.vim
   source $HOME/.config/nvim/plug-config/syntastic.vim
 endif
