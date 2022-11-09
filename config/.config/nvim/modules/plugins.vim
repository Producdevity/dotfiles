 " auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" Specify a directory for plugins
call plug#begin("~/.config/nvim/plugged")

    Plug 'wakatime/vim-wakatime'

    " Editing files
    Plug 'tpope/vim-surround'                                                  " Change easy surroundings
    Plug 'tpope/vim-repeat'                                                    " Better dot repeat
    Plug 'tomtom/tcomment_vim'                                                 " Easy commenting

    " UI
    Plug 'bling/vim-airline'                                                   " Airline
    Plug 'vim-airline/vim-airline-themes'                                      " Airline themes
    Plug 'morhetz/gruvbox'                                                     " Color Scheme
    Plug 'roman/golden-ratio'                                                  " Automatically resizing windows
    Plug 'psliwka/vim-smoothie'                                                " Smooth Scrolling
    Plug 'christoomey/vim-tmux-navigator'                                      " Easy TMUX and Vim navigation
    Plug 'scrooloose/nerdtree'                                                 " Nerdtree File Explorer
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'                             " Nerdtree colors
    Plug 'Xuyuanp/nerdtree-git-plugin'                                         " Git status in Nerdtree
    Plug 'ryanoasis/vim-devicons'                                              " Icon Fonts
    Plug 'RRethy/vim-illuminate'                                               " Highlight same stuff

    " Functionality
    Plug 'neoclide/coc.nvim', {'branch': 'release'}                            " Autocomplete
    Plug 'kevinoid/vim-jsonc'                                                  " JSON with Comments for Vim
    Plug 'junegunn/fzf.vim'                                                    " Fuzzy Finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                        " Fuzzy Finder Latest Binary

    " JS/TS
    Plug 'pangloss/vim-javascript'
    Plug 'leafgarland/typescript-vim'
    " Plug 'peitalin/vim-jsx-typescript'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'mattn/emmet-vim'

    " Other languages and stuff
    Plug 'dag/vim-fish'

" Initialize plugin system
call plug#end()
