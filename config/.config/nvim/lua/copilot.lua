-- Set copilot_node_command
vim.g.copilot_node_command = "~/.nvm/versions/node/v16.17.0/bin/node"

-- Set copilot_node_command dynamically
-- vim.g.copilot_node_command = vim.fn.system('which node')

-- Set copilot_filetypes
vim.g.copilot_filetypes = {
  ['*'] = true,
}

