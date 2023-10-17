set nocompatible 

set ruler
set laststatus=2 
set number
set colorcolumn=80        " Highlight 80 character limit

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
colorscheme monotone
