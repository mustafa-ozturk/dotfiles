set nocompatible 
                
set ruler
set laststatus=2 
set number
set colorcolumn=80                  " Highlight 80 character limit
set noswapfile
set clipboard=unnamed               " yank into clipboard
set showcmd
set list                            " Show invisible characters
set listchars=tab:›\ ,eol:¬,trail:⋅ " Set the characters for the invisibles

let g:netrw_liststyle=3             " netrw liststyle

" Tab completion settings
set wildmenu
set wildmode=list:longest           " Wildcard matches show a list, matching the longest first
set wildignore+=.git,.hg,.svn       " Ignore version control repos
set wildignore+=*.swp               " Ignore vim backups
set wildignore=*/node_modules/*     " Igonore node modules

" Tab settings
set expandtab     " Space instead of tab character
set tabstop=4     " Tabs width in spaces

" Search settings
set hlsearch   " highlight results
set incsearch  " Start showing results as you type

" Colors
syntax on
let &t_ut='' " see: https://sw.kovidgoyal.net/kitty/faq/#using-a-color-theme-with-a-background-color-does-not-work-well-in-vim
set t_Co=256 " use 256 colors
set bg=dark
colorscheme gruvbox
" This is required to force 24-bit color since I use a modern terminal.
set termguicolors

" use ftplugin if this gets too much
" need js suffix for gf
autocmd Filetype javascript setlocal suffixesadd=.js

