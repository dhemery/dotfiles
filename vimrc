"---------------------------------------------------------------
" General settings
"---------------------------------------------------------------

set nocompatible    " Make Vim more vim-like, less vi-like.
set hidden          " Abandoning a buffer (e.g. by opening
                    " another file) hides it instead of closing.
set exrc            " Read any .vimrc file in the startup dir.

"---------------------------------------------------------------
" Filetype
"---------------------------------------------------------------

filetype on         " enable filetype detection
filetype plugin on  " enable filetype-specific plugins
filetype indent on  " enable filetype-specific indentation

"--------------------------------------------------------------
" Command completion
"--------------------------------------------------------------

set wildmenu        " Enable the completion menu.
set wildmode=full   " Launch completion if multiple matches.

"--------------------------------------------------------------
" Key mapping
"--------------------------------------------------------------

let mapleader=' ' " Use space as leader

"---------------------------------------------------------------
" Display
"---------------------------------------------------------------

set title           " Set the terminal window's title
set number          " Display line numbers
set laststatus=2    " Always display the status line
set showcmd         " Show partial commands in status
set ruler           " Display cursor position in status
set cmdheight=2     " Set the command window to 2 lines, to
                    " avoid having to press <enter> to continue
set visualbell      " Visual bell instead of beeping ...
set t_vb=           " ... and turn off the bell altogether
" set cursorline      " Highlight the line the cursor is on
set linebreak       " Wrap lines at more reasonable places.
set scrolloff=3     " # Lines to retain when scrolling

" Consider tabs, trailing space, eol as invisible characters
set listchars=tab:>-,trail:·,eol:$

" ,s: Toggle showing invisible chracters
nnoremap <silent> <leader>s :set list!

"---------------------------------------------------------------
" Colors
"---------------------------------------------------------------

set background=dark
colorscheme slate
syntax enable       " Enable syntax highlighting

"---------------------------------------------------------------
" Files
"---------------------------------------------------------------

set path=**

"---------------------------------------------------------------
" Search
"---------------------------------------------------------------

set ignorecase      " Case insensitive search...
set smartcase       " ... except when using capital letters
set incsearch       " Highlight match while typing

" Turn off highlights in insert mode
autocmd InsertEnter * :setlocal nohlsearch

" Toggle search highlights
nnoremap <leader>/ :set hlsearch!<CR>

"---------------------------------------------------------------
" Formatting
"---------------------------------------------------------------

set tabstop=8       " # spaces a tab expands into
set expandtab       " Insert mode expands tabs to spaces
set shiftwidth=2    " # columns to indent with >> and <<
set softtabstop=-1  " Insert mode inserts 'shiftwidth' spaces
set autoindent      " Copy the indentation of the previous line

" t Autowrap non-comment text
" c Autowrap comments
" q Allow formatting comments with gq
set formatoptions=tcq

"---------------------------------------------------------------
" Motion
"---------------------------------------------------------------

" Kill the arrow keys
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

"---------------------------------------------------------------
" Windows and Tabs
"---------------------------------------------------------------
nnoremap <leader>w <C-w>
augroup ShowActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    autocmd WinLeave * setlocal nocursorline
augroup END

