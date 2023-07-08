-- Activate Modules
require('plugins')
require('functions')
require('filetypes')
require('settings')
require('mappings')
require('theme')
require('autocmds')

-- Plugin Settings
require('lsp')
require('coc')
require('copilot')
require('emmet')
require('fzf')
require('jsx')
require('nerdtree')

-- Why need Perl? We already have the Python3, Ruby, Node.js and Lua.
vim.g.loaded_perl_provider = 0

-- Ok, no Ruby
vim.g.loaded_ruby_provider = 0

-- Snakes like to hide
vim.g.python3_host_prog = "/usr/local/bin/python3"

