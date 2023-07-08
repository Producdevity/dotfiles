-- Search in current dir
vim.api.nvim_set_keymap('n', '<Leader>pf', ':Files %:p:h<CR>', {silent = true, noremap = true})
-- Inside GIT project
vim.api.nvim_set_keymap('n', '<Leader>o', ':GFiles<CR>', {silent = true, noremap = true})
-- Search in root
vim.api.nvim_set_keymap('n', '<C-f>', ':Files<CR>', {silent = true, noremap = true})
-- Search using ripgrep
vim.api.nvim_set_keymap('n', '<C-p>', ':Rg!<CR>', {silent = true, noremap = true})

-- This is the default extra key bindings
vim.g.fzf_action = {
  ['ctrl-t'] = 'tab split',
  ['ctrl-h'] = 'split',
  ['ctrl-v'] = 'vsplit'
}

local find_git_root = function()
  return vim.fn.system('git rev-parse --show-toplevel 2> /dev/null'):gsub('%s+$', '')
end

vim.cmd("command! ProjectFiles execute 'Files' " .. find_git_root())

vim.g.fzf_layout = { ['window'] = { ['width'] = 0.9, ['height'] = 0.9 } }

vim.env.FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor}/*"'
vim.env.FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4 --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

-- Command for Files
vim.cmd([[command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)]])
