-- Recognize filetypes
vim.api.nvim_command("au BufNewFile,BufRead .prettierrc set filetype=json")
vim.api.nvim_command("au BufNewFile,BufRead .babelrc set filetype=json")
vim.api.nvim_command("au BufNewFile,BufRead .eslintrc set filetype=json")
vim.api.nvim_command("au BufNewFile,BufRead *.xcworkspacedata set filetype=xml")
vim.api.nvim_command("au BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact")
vim.api.nvim_command("au BufNewFile,BufRead Brewfile set filetype=bash")
vim.api.nvim_command("au BufNewFile,BufRead .mhtml set filetype=bash")

-- XML folding
vim.g.xml_syntax_folding = 1
vim.api.nvim_command("au FileType xml setlocal foldmethod=syntax")
