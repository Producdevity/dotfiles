-- Conquer of Completion Settings

-- Install these extensions if missing
vim.g.coc_global_extensions = {
  'coc-vimlsp',
  'coc-html',
  'coc-html-css-support',
  'coc-json',
  'coc-tsserver',
  'coc-eslint',
  'coc-tslint',
  'coc-sh',
  'coc-solargraph',
  'coc-phpls',
  'coc-css',
  'coc-git',
  'coc-prettier',
  'coc-emmet',
  'coc-pairs',
  'coc-yaml'
}

-- Markdown Code Highlighting
vim.g.markdown_fenced_languages = {
  'vim',
  'help',
  'html',
  'bash=sh',
  'css',
  'scss',
  'sass',
  'javascript',
  'js=javascript',
}

-- Color changes
vim.cmd[[ hi! link CocErrorSign WarningMsg ]]
vim.cmd[[ hi! link CocWarningSign Number ]]
vim.cmd[[ hi! link CocInfoSign Type ]]

-- Use <c-space> to trigger completion.
if vim.fn.has('nvim') == 1 then
  vim.api.nvim_set_keymap('i', '<c-space>', 'coc#refresh()', {silent = true, expr = true})
else
  vim.api.nvim_set_keymap('i', '<c-@>', 'coc#refresh()', {silent = true, expr = true})
end

-- Setup prettier command
vim.cmd[[ command! -nargs=0 Prettier :CocCommand prettier.formatFile ]]

-- Highlight the symbol and its references when holding the cursor.
vim.cmd[[ autocmd CursorHold * silent call CocActionAsync('highlight') ]]


-- Formatting selected code.
vim.api.nvim_set_keymap('v', '<leader><leader>l', '<Plug>(coc-format-selected)', {silent = true})
vim.api.nvim_set_keymap('x', '<leader><leader>l', '<Plug>(coc-format-selected)', {silent = true})
vim.api.nvim_set_keymap('n', '<leader><leader>l', '<Plug>(coc-format-selected)', {silent = true})

-- Function to show documentation
_G.show_documentation = function()
  if vim.tbl_contains({'vim','help'}, vim.bo.filetype) then
    vim.cmd('h ' .. vim.fn.expand('<cword>'))
  elseif vim.fn['coc#rpc#ready']() then
    vim.fn['CocActionAsync']('doHover')
  else
    vim.cmd('!' .. vim.bo.keywordprg .. " " .. vim.fn.expand('<cword>'))
  end
end

-- Use gk to show documentation in preview window.
vim.api.nvim_set_keymap('n', 'gk', ':lua _G.show_documentation()<CR>', {silent = true})

-- Show diagnostics
vim.api.nvim_set_keymap('n', '<leader>d', ':CocList diagnostics<cr>', {silent = true})

-- Perform codeaction
vim.api.nvim_set_keymap('n', '<c-space>', '<Plug>(coc-codeaction)', {silent = true})

-- GoTo code navigation.
vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', {silent = true})
vim.api.nvim_set_keymap('n', 'gy', '<Plug>(coc-type-definition)', {silent = true})
vim.api.nvim_set_keymap('n', 'gi', '<Plug>(coc-implementation)', {silent = true})
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', {silent = true})

-- Symbol renaming.
vim.api.nvim_set_keymap('n', '<leader>rn', '<Plug>(coc-rename)', {silent = true})

-- Select completion with <CR> and <Tab>
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "\\<C-g>u\\<CR>"', {expr = true, silent = true})
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? coc#_select_confirm() : "\\<C-g>u\\<CR>"', {expr = true, silent = true})

-- Prettier and ESLint -> check if exist before installing
if vim.fn.isdirectory('./node_modules') == 1 and vim.fn.isdirectory('./node_modules/prettier') == 1 then
  table.insert(vim.g.coc_global_extensions, 'coc-prettier')
end

if vim.fn.isdirectory('./node_modules') == 1 and vim.fn.isdirectory('./node_modules/eslint') == 1 then
  table.insert(vim.g.coc_global_extensions, 'coc-eslint')
end

-- Fix for using Node through NVM
vim.g.coc_node_path = vim.fn.trim(vim.fn.system('which node'))
