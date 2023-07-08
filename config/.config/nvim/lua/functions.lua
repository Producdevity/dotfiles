-- ShowSpaces function
local function ShowSpaces(...)
  vim.cmd("let @/='\\v(\\s+$)|( +\\ze\\t)'")
  local oldhlsearch = vim.wo.hlsearch
  if #{...} == 0 then
    vim.wo.hlsearch = not vim.wo.hlsearch
  else
    vim.wo.hlsearch = ({...})[1]
  end
  return oldhlsearch
end

-- TrimSpaces function
local function TrimSpaces(firstline, lastline)
  local oldhlsearch = ShowSpaces(1)
  vim.cmd(firstline.."."..lastline.."substitute ///gec")
  vim.wo.hlsearch = oldhlsearch
end

-- ShowSpaces command
vim.cmd("command! -bar -nargs=? ShowSpaces lua ShowSpaces(<f-args>)")

-- TrimSpaces command
vim.cmd("command! -bar -nargs=0 -range=% TrimSpaces lua TrimSpaces(<line1>,<line2>)")

-- F12 and Shift-F12 mappings
vim.api.nvim_set_keymap('n', '<F12>', ':ShowSpaces 1<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<S-F12>', "m`:TrimSpaces<CR>`", {noremap = true})
vim.api.nvim_set_keymap('v', '<S-F12>', ':TrimSpaces<CR>', {noremap = true})

-- NumberToggle function
local function NumberToggle()
  if vim.wo.relativenumber == true then
    vim.cmd("set nornu")
  else
    vim.cmd("set rnu")
  end
end

-- Ctrl-n mapping
vim.api.nvim_set_keymap('n', '<C-n>', ':lua NumberToggle()<cr>', {noremap = true})
