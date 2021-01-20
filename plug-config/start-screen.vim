let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Files']            },
      \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ ]
let g:startify_bookmarks = [
      \ { 'p': '~/.config/nvim/vim-plug/plugins.vim'},
      \ { 'i': '~/.config/nvim/init.vim' },
      \ { 'm': '~/.config/nvim/keys/mappings.vim' },
      \ { 's':'~/.config/nvim/general/settings.vim'},
      \ { 'c': '~/.config/nvim/CheatSheet.md' },
      \ { 'z': '~/.zshrc' }
      \ ]
