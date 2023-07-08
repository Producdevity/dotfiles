local autocmds = {
  syntaxSync = {
    {"BufEnter", "*.{js,jsx,ts,tsx}", "syntax sync fromstart"},
    {"BufLeave", "*.{js,jsx,ts,tsx}", "syntax sync clear"}
  },
  jsonFolding = {
    {"FileType", "json", "set foldmethod=syntax"}
  }
}

local function nvim_create_augroups(definitions)
  for group_name, definition in pairs(definitions) do
    vim.cmd('augroup '..group_name)
    vim.cmd('autocmd!')
    for _, def in ipairs(definition) do
      local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
      vim.cmd(command)
    end
    vim.cmd('augroup END')
  end
end

nvim_create_augroups(autocmds)
