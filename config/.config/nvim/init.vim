" Activate Modules
source $HOME/.config/nvim/modules/plugins.vim
source $HOME/.config/nvim/modules/functions.vim
source $HOME/.config/nvim/modules/filetypes.vim
source $HOME/.config/nvim/modules/settings.vim
source $HOME/.config/nvim/modules/mappings.vim
source $HOME/.config/nvim/modules/theme.vim
source $HOME/.config/nvim/modules/autocmds.vim

" Plugin Settings
source $HOME/.config/nvim/modules/coc.vim
source $HOME/.config/nvim/modules/emmet.vim
source $HOME/.config/nvim/modules/fzf.vim
source $HOME/.config/nvim/modules/jsx.vim
source $HOME/.config/nvim/modules/nerdtree.vim

" Automatically removing all trailing whitespace
" autocmd BufWritePre * %s/\s\+$//e

" let g:smoothie_enabled = 0


" Why need Perl? We already have the Python3, Ruby, Node.js and Lua.
let g:loaded_perl_provider = 0

" Ok, no Ruby
let g:loaded_ruby_provider = 0
