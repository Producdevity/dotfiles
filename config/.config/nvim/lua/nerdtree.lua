-- Hide certain files and directories from NERDTree
vim.g.NERDTreeIgnore = {'^node_modules$', '^\\.DS_Store$', '^tags$', '\\.git$[[dir]]', '\\.idea$[[dir]]', '\\.sass-cache$'}
-- Show hidden files/directories
vim.g.NERDTreeShowHidden = 1 

-- Toggle NERDTree
vim.api.nvim_set_keymap('n', '<leader><leader>n', ':silent! NERDTreeToggle<CR>', {})
vim.api.nvim_set_keymap('n', '<C-b>', ':silent! NERDTreeToggle <CR>', {})
vim.api.nvim_set_keymap('n', '<D-1>', ':NERDTreeToggle<CR>', {})

-- Find current file in NERDTree
vim.api.nvim_set_keymap('n', '<leader><leader>f', ':NERDTreeFind<CR>', {})

-- NERDTreeFindToggle function
_G.NERDTreeFindToggle = function()
  if vim.g["NERDTree.IsOpen()"] then
    vim.cmd("NERDTreeClose")
  elseif vim.fn.bufexists(vim.fn.expand('%')) then
    vim.cmd("NERDTreeFind")
  else
    vim.cmd("NERDTree")
  end
end

-- Settings for nerdtree-git-plugin
vim.g.NERDTreeGitStatusUseNerdFonts = 1 -- Use icons
vim.g.NERDTreeGitStatusShowClean = 1 -- Show 'clean' indicator

-- Uncomment below line to disable uncommon file extensions highlighting
-- vim.g.NERDTreeLimitedSyntax = 1 -- this is a good idea if you are experiencing lag when scrolling.
