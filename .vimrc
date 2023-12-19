set nocompatible 


set ruler
set laststatus=2 
set number relativenumber
set colorcolumn=80                  " Highlight 80 character limit
set noswapfile
set clipboard=unnamedplus           " yank into clipboard
set showcmd
set list                            " Show invisible characters
set listchars=tab:›\ ,eol:¬,trail:⋅ " Set the characters for the invisibles
set splitbelow                      " Splits show up below by default
set splitright                      " Splits go to the right by default

let mapleader=";"                   " The <leader> key
let g:netrw_liststyle=3             " netrw liststyle

" Tab completion settings
set wildmenu
set wildmode=list:longest           " Wildcard matches show a list, matching the longest first
set wildignore+=.git,.hg,.svn       " Ignore version control repos
set wildignore+=*.swp               " Ignore vim backups
set wildignore=*/node_modules/*     " Igonore node modules

" Tab settings
set expandtab     " Expand tabs to the proper type and size
set tabstop=4     " Tabs width in spaces
set softtabstop=4 " Soft tab width in spaces
set shiftwidth=4  " Amount of spaces when shifting

" Search settings
set hlsearch   " highlight results
set incsearch  " Start showing results as you type

" remaps
nnoremap <C-p> :GFiles<Cr>
nnoremap <C-g> :Rg<Cr>

" use ftplugin if this gets too much
" need js suffix for gf
autocmd Filetype javascript setlocal suffixesadd=.js

" ----------------------------------------------------------------------------
" PLUGINS
" ----------------------------------------------------------------------------

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()

Plug 'junegunn/vim-plug' " vim-plug help
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()

" fix gitgutter background color
let g:gitgutter_override_sign_column_highlight=1
" fix vim-airline symbols (without installing bloated fonts)
let g:airline_symbols_ascii = 1
  
" temp workaround for clipboard support in wayland when using unamedplus
" https://github.com/vim/vim/issues/5157
autocmd TextYankPost * if (v:event.operator == 'y' || v:event.operator == 'd') | silent! execute 'call system("wl-copy", @")' | endif
nnoremap p :let @"=substitute(system("wl-paste --no-newline"), '<C-v><C-m>', '', 'g')<cr>p

" ----------------------------------------------------------------------------
" COLORS
" ----------------------------------------------------------------------------
syntax enable
let &t_ut='' " see: https://sw.kovidgoyal.net/kitty/faq/#using-a-color-theme-with-a-background-color-does-not-work-well-in-vim
set t_Co=256 " use 256 colors
set background=dark
colorscheme gruvbox

" This is required to force 24-bit color for modern terminals
set termguicolors

