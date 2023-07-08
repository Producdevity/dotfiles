-- Only required if you have packer in your `opt` pack
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/lsp-status.nvim'

  -- The use function serves the same role as Plug in vim-plug
  use 'wakatime/vim-wakatime'

  -- Editing files
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'tomtom/tcomment_vim'

  -- UI
  use 'bling/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'morhetz/gruvbox'
  use 'roman/golden-ratio'
  use 'christoomey/vim-tmux-navigator'
  use 'scrooloose/nerdtree'
  use 'Xuyuanp/nerdtree-git-plugin'
  use 'ryanoasis/vim-devicons'
  use 'RRethy/vim-illuminate'

  -- Functionality
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'kevinoid/vim-jsonc'
  use 'junegunn/fzf.vim'
  use { 'junegunn/fzf', run = function() vim.fn['fzf#install']() end }

  -- JS/TS
  use 'pangloss/vim-javascript'
  use 'leafgarland/typescript-vim'
  use 'maxmellon/vim-jsx-pretty'
  use 'mattn/emmet-vim'

  -- Other languages and stuff
  use 'williamboman/mason.nvim'
end)
