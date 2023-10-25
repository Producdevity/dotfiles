filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"ultisnips + default snippets
" Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"C# and .NET 
" Plugin 'OmniSharp/omnisharp-vim'
" Plugin 'tpope/vim-dispatch'


" Linting
Plugin 'benekastah/neomake'

" Editing files
Plugin 'Raimondi/delimitMate'      " Auto closing quotes, parenthesis, etc
Plugin 'Valloric/YouCompleteMe'    " Autocompleter
Plugin 'github/copilot'            " AI
Plugin 'gregsexton/MatchTag'       " Html highlight MatchTag
Plugin 'mattn/emmet-vim'           " Vim emmet
Plugin 'tComment'                  " Easy commenting
Plugin 'terryma/vim-expand-region' " Expand selection
Plugin 'tpope/vim-repeat'          " Better dot repeat
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'        " Change easy surroundings
Plugin 'wakatime/vim-wakatime'     " Wakatime time tracker

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Ctrlp -> Fuzzy searh
Plugin 'ctrlpvim/ctrlp.vim'

" JavaScript.vim
Plugin 'pangloss/vim-javascript'          " Javascript
Plugin 'leafgarland/typescript-vim'       " Typescript
Plugin 'posva/vim-vue'                    " VueJS

" GraphQL
Plugin 'jparise/vim-graphql'

"Syntastic
Plugin 'Syntastic'

" Autosave
Plugin 'vim-auto-save'

" UI
Plugin 'bling/vim-airline'                " Airline
Plugin 'vim-airline/vim-airline-themes'   " Airline themes
Plugin 'scrooloose/nerdtree'              " NERDTree
Plugin 'osyo-manga/vim-anzu'              " Count search result
Plugin 'majutsushi/tagbar'
Plugin 'ap/vim-css-color'                 " Color name highlighter
Plugin 'roman/golden-ratio'               " Automatically resizing windows
Plugin 'kien/rainbow_parentheses.vim'     " Rainbow parentheses
Plugin 'ryanoasis/vim-devicons'           " Icon Fonts 

" Syntax highlighting
Plugin 'jwalton512/vim-blade' " blade highlighting

"--------------------Themes----------------------"
Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
