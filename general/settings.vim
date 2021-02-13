let g:mapleader = "\<Space>"
set nocompatible
filetype plugin on
set path+=**
syntax enable              
set ignorecase 
set smartcase
set infercase
set number                
set relativenumber
set wrap                 
set linebreak
set fo=tcrwa textwidth=80
set encoding=utf-8      
set pumheight=10      
set fileencoding=utf-8 
set splitbelow                          
set t_Co=256                           
set tabstop=2                         
set shiftwidth=2                     
set smarttab                       
set expandtab                    
set smartindent                
set nobackup                  
set nowritebackup           
set updatetime=300         
set autoindent            
set background=dark     
set clipboard=unnamed
set clipboard=unnamedplus
set noshowmode          
set hidden             
set cmdheight=2       
set iskeyword+=-     
set mouse=a         
set splitright     
set conceallevel=0
set laststatus=0 
set cursorline  
set showtabline=2
set timeoutlen=500 
set formatoptions-=cro         
set autochdir                 
set cmdheight=1
au! BufWritePost $MYVIMRC source %     

cmap w!! w !sudo tee %

