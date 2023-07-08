-- If you have vim >=8.0 or Neovim >= 0.1.5
if vim.o.termguicolors then
  vim.o.termguicolors = true
end

-- Theme
vim.cmd [[syntax enable]]
vim.cmd [[colorscheme gruvbox]]
vim.o.background = 'dark'

vim.g.gruvbox_contrast_dark = 'hard'
vim.g.gruvbox_invert_selection = '0'

-- Define color codes
local colorColumnGui = '#e5a3a3'
local lineNrGui = '#5598c6'

-- Column Color
vim.cmd('highlight ColorColumn ctermbg=0 guibg=' .. colorColumnGui)

-- LineNumber Color
vim.cmd('highlight LineNr guifg=' .. lineNrGui)

-- Underline the current line
vim.cmd [[highlight CursorLine gui=underline cterm=underline]]

-- Should prevent hidden cursor bug
-- vim.o.guioptions = vim.o.guioptions:gsub('L', '')
