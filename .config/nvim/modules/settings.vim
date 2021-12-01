set list listchars=tab:»·,trail:·  " Display extra whitespace

set background=dark                " Or light
set smartindent                    " Smartindent
set smarttab                       " Smarttab
set title                          " Change the terminal's title
set hidden                         " Keep buffers alive in the background
set noerrorbells                   " Don't beep, just stfu
set autoindent                     " Always set autoindenting on
set copyindent                     " Copy the previous indentation on autoindenting
set nowrap                         " No wrapping please
set foldmethod=manual              " Foldmethod syntax
set lazyredraw                     " Redraw less for vroom vroom
set encoding=utf-8                 " Encoding UTF-8
set clipboard=unnamed              " Use system clipboar
set showcmd                        " Display command
set number                         " Linenumbers
set relativenumber                 " Relative linenumber
set hlsearch                       " Highlight search terms
set incsearch                      " Show search matches as you type
set pastetoggle=<F2>               " Switch past mode
set ignorecase                     " So we can use smartcase
set smartcase                      " Casesensitive search whenever a uppercase is used
set synmaxcol=512                  " Highlight long lines
set autoread                       " Watch files
set autowrite                      " Save on changing buffers
set scrolloff=8                    " Start scrolling earlier"
set sidescrolloff=8                " Start scrolling earlier"
set signcolumn=auto                " Extra column for indicators (if there are any)
set backspace=2                    " Make backspace delete characters
set cursorline                     " Highlight current line
set shortmess+=c                   " Don't pass messages to |ins-completion-menu|.

" Splits
set splitright
set splitbelow

" 2 space tabs
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Mouse
set mouse=a
set ttyfast
set t_Co=256

" History
set nowritebackup
set history=1000
set noswapfile
set nobackup

" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300


if $TMUX == ''
  set clipboard+=unnamed
endif

if exists('+colorcolumn')
  " Highlight up to 255 columns (this is the current Vim max) beyond 'textwidth'
  let &l:colorcolumn='+' . join(range(0, 254), ',+')
endif

set redrawtime=1000
set regexpengine=1

