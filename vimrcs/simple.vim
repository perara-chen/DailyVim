" Vim startup options                   ------------------------------------------
set nocompatible            " Disable vi compatibility
filetype on                 " Enable type file detection
filetype plugin on          " Enable plugins and load plugin for the detected file type
filetype indent on          " Auto indent on

" Vim editor settings                   ------------------------------------------
syntax on                                       " Turn syntax highlighting on
set guifont=CodeNewRomanNerdFontCompleteM-:h13  " Set editor's font style and font size
colorscheme xcodedark                           " Set editor's color scheme
set number                                      " Show line numbers 
set shiftwidth=4                                " Set the shift width to 4 spaces
set tabstop=4                                   " Set tab width to 4 columns
set expandtab                                   " Use space characters instead of tabs
set wrap                                        " No line warping

" Vim window settings
set lines=45 columns=140                        " Set default Vim window size
set splitbelow                                  " Show new buffers below the current buffer
set showmode                                    " Show current Vim mode

" Vim search settings                   ------------------------------------------
set incsearch           " Incrementally highlight matching characters 
set ignorecase          " Ignore capital letters during search
set smartcase           " Search capital letters if it is specified
set showmatch           " Show matching patterns during the search
set hlsearch            " Highlight matching patterns during the search

" Vim command mode Bash completion      ------------------------------------------
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Vim status line                       ------------------------------------------
set statusline=                                         " Show status line
set statusline+=\ %{expand('%:~:.')}\ %M\ %Y\ %R        " Status line left side
set statusline+=%=                                      " Add separator to the status line
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%    " Status line right side
set laststatus=2

" C Language settings                   ------------------------------------------
" Compile current C source file and show result
map <F5> :w<CR>:!cc % && ./a.out && rm a.out<CR>
