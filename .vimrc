set nocompatible 

syntax off

set hlsearch
set ruler
set laststatus=2 
set number

" Colors
hi LineNr ctermfg=grey                  " Line number color 
hi Visual cterm=none ctermbg=darkgrey   " Visual select color


" Tab completion settings
set wildmenu
set wildmode=list:longest     " Wildcard matches show a list, matching the longest first
set wildignore+=.git,.hg,.svn " Ignore version control repos
set wildignore+=*.swp         " Ignore vim backups

" Tab settings
set expandtab     " Space instead of tab character
set tabstop=4     " Tabs width in spaces
