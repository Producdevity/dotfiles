set list listchars=tab:»·,trail:·        " Display extra whitespace
" colorscheme Tomorrow-Night             " Setting up the theme
colorscheme Tomorrow-Night-Eighties      " Setting up the theme
set guifont=Fira_Code_Nerd_Font:h12      " Setting up the font

set background=dark     " Or light
set smartindent         " Smartindent
set smarttab            " Smarttab
set title               " Change the terminal's title
set hidden              " Keep buffers alive in the background
set noerrorbells        " Don't beep, just stfu
set autoindent          " Always set autoindenting on
set copyindent          " Copy the previous indentation on autoindenting
set nowrap              " No wrapping please
set foldmethod=syntax   " Foldmethod syntax
set lazyredraw          " Redraw less for vroom vroom
set encoding=utf8       " Encoding UTF-8
set clipboard=unnamed   " Use system clipboar
set showcmd             " Display command
set number              " Linenumbers
set relativenumber      " Relative linenumber
set hlsearch            " Highlight search terms
set incsearch           " Show search matches as you type
set pastetoggle=<F2>    " Switch past mode
set ignorecase          " So we can use smartcase
set smartcase           " Casesensitive search whenever a uppercase is used
set synmaxcol=512       " Highlight long lines
set autoread            " Watch files
set autowrite           " Save on changing buffers
set scrolloff=8         " Start scrolling earlier"
set colorcolumn=80      " Add an extra line on the right
set signcolumn=auto     " Extra column for indicators (if there are any)

" make backspace delete characters
set backspace=2
" 4 space tabs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Splits
set splitright
set splitbelow

" Mouse
set mouse=a
set ttyfast
set t_Co=256

" History
set nowritebackup
set history=10000
set noswapfile
set nobackup

" Persistent undo
set undodir=~/.vim/undo/
set undofile
set undolevels=1000
set undoreload=10000

if $TMUX == ''
  set clipboard+=unnamed
endif
