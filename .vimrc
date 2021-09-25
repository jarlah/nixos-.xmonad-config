" --------------------------------------
"  OPTIONS
" --------------------------------------

set autochdir
set colorcolumn=80      " Only supported by vim 7.3+
set encoding=utf8       " UTF-8 by default
set expandtab           " No tabs
set formatoptions=tcqn1 " t - autowrap normal text
                        " c - autowrap comments
                        " q - gq formats comments
                        " n - autowrap lists
                        " 1 - break before single-letter words
                        " 2 - use indenting from 2nd linie of para
set linebreak           " Break long lines by word, not char
set number
set ruler               " Show row/col and percentage
set scroll=4            " Number of lines to scroll with ^U/^D
set shiftwidth=2        " Number of spaces to shift for autoindent or >, <
set showmatch           " Highlight matching braces/parens/etc
set softtabstop=2       " Spaces feel like tabs
set t_Co=256            " Set color depth to 256
set tabstop=2           " The one true tab™
set textwidth=100       " 80 char preference

if &term =~ '256color'
  " Disable Background Color Erase (BCE) so that color schemes
  " work properly when Vim is used inside tmux and GNU screen.
  set t_ut=
endif

" --------------------------------------
map <C-n> :NERDTreeToggle<CR>

" --------------------------------------
" vim-plug
" --------------------------------------

" Specify directory for plugins (avoid 'plugin')
call plug#begin('~/.vim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'rakr/vim-one'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'

call plug#end()

"colo gentooish " Nice dark theme

" The port of the Atom One theme, can be set to light or dark using the bg
set background=light

colo one

" Let NERDTree show hidden files
let NERDTreeShowHidden=1

" Override the theme and set the 80 char line color
hi ColorColumn ctermbg=LightRed

" Use Ag for search instead of Ack
let g:ackprg = 'ag --nogroup --nocolor --column'
