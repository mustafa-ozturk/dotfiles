set nocompatible 

syntax on

set ruler
set laststatus=2 
set number
set colorcolumn=80        " Highlight 80 character limit

" Colors
" hi LineNr ctermfg=grey                      " Line number color 
" hi Visual cterm=none ctermbg=darkgrey       " Visual select color (cterm can be none, underline, bold)
" hi ColorColumn ctermbg=darkgrey             " Column limit color
" hi Search ctermbg=darkgrey                  " Search highlight color
" hi MatchParen cterm=none ctermbg=darkgrey   " Matched paren highlight color

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

" colorscheme
" let g:monotone_color = [120, 100, 70] " Sets theme color to bright green
" let g:monotone_secondary_hue_offset = 200 " Offset secondary colors by 200 degrees
" let g:monotone_emphasize_comments = 1 " Emphasize comments

colorscheme monotone
