-- General
-- Set leader to space
vim.api.nvim_set_keymap('n', '<space>', '<leader>', {})
vim.api.nvim_set_keymap('x', '<space>', '<leader>', {})
vim.api.nvim_set_keymap('n', '<space><space>', '<leader><leader>', {})
vim.api.nvim_set_keymap('x', '<space><space>', '<leader><leader>', {})

-- Insert Mode
-- Folding
vim.api.nvim_set_keymap('i', '<F9>', '<C-O>za', {})
-- Ctrl-e just to the end of the line
vim.api.nvim_set_keymap('i', '<C-e>', '<C-o>A', {})
-- Navigation
vim.api.nvim_set_keymap('i', '<C-k>', '<Up>', {})
vim.api.nvim_set_keymap('i', '<C-j>', '<Down>', {})
vim.api.nvim_set_keymap('i', '<C-l>', '<Right>', {})
vim.api.nvim_set_keymap('i', '<C-h>', '<Left>', {})
-- Delete word backwards
vim.api.nvim_set_keymap('i', 'ÿ', '<C-o>dvb', {})

-- Normal Mode
-- Mappings to move lines
vim.api.nvim_set_keymap('n', '<A-J>', ':m .+1<CR>==', {})
vim.api.nvim_set_keymap('n', 'Ê', ':m .+1<CR>==', {})
vim.api.nvim_set_keymap('n', '<A-K>', ':m .-2<CR>==', {})
vim.api.nvim_set_keymap('n', 'Ë', ':m .-2<CR>==', {})
-- Folding
vim.api.nvim_set_keymap('n', '<F9>', 'za', {})
-- Add a semicolon and comma to end of line
vim.api.nvim_set_keymap('n', '…', 'A;<Esc>', {})
vim.api.nvim_set_keymap('n', '≤', 'A,<Esc>', {})
-- Select all
vim.api.nvim_set_keymap('n', '<C-a>', 'GVgg', {})
-- Auto indent complete file
vim.api.nvim_set_keymap('n', '<leader>l', 'mzgg=G`z', {})
-- No highlight search
vim.api.nvim_set_keymap('n', '<leader>m', ':noh<CR>', {})
-- Close buffer
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', {})
-- Close buffer forcing
vim.api.nvim_set_keymap('n', '<leader>Q', ':q!<CR>', {})
-- Close and save
vim.api.nvim_set_keymap('n', '<leader>x', ':x<CR>', {})
-- Write file
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', {})
-- Write all files
vim.api.nvim_set_keymap('n', '<leader>wa', ':wa<CR>', {})
-- Navigate panes
vim.api.nvim_set_keymap('n', '<C-h>', '<C-W><C-H>', {})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-W><C-J>', {})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-W><C-K>', {})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-W><C-L>', {})
-- Duplicate line
vim.api.nvim_set_keymap('n', '∂', 'yyp', {})
-- Quickly edit/reload the vimrc file
vim.api.nvim_set_keymap('n', '<leader>ec', ':e $MYVIMRC<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>sc', ':so $MYVIMRC<CR>:echo "Reloaded Config"<CR>', {})
-- New line without going into insert mode
vim.api.nvim_set_keymap('n', '<A-CR>', 'O<Esc>', {})
vim.api.nvim_set_keymap('n', '<CR>', 'o<Esc>', {})
-- Go to the end of line and delete char Alt-l
vim.api.nvim_set_keymap('n', 'ì', '<Esc>$x<Esc>', {})
vim.api.nvim_set_keymap('n', '¬', '<Esc>$x<Esc>', {})
-- Open file under cursor
vim.api.nvim_set_keymap('n', '<C-W>f', 'gf', {})
-- Open file under cursor in split
vim.api.nvim_set_keymap('n', '<C-W><C-F>', '<C-W>vgf', {})
-- Create a key mapping to indent text
vim.api.nvim_set_keymap('n', '<D-]>', '>>', {})
vim.api.nvim_set_keymap('n', '<D-[>', '<<', {})
-- Previous and Next Tab
vim.api.nvim_set_keymap('n', '∆', 'gT', {})
vim.api.nvim_set_keymap('n', '˚', 'gt', {})

-- Visual Mode
-- Mappings to move lines
vim.api.nvim_set_keymap('v', '<A-J>', ":m '>+1<CR>gv=gv", {})
vim.api.nvim_set_keymap('v', 'Ê', ":m '>+1<CR>gv=gv", {})
vim.api.nvim_set_keymap('v', '<A-K>', ":m '<-2<CR>gv=gv", {})
vim.api.nvim_set_keymap('v', 'Ë', ":m '<-2<CR>gv=gv", {})
-- Folding
vim.api.nvim_set_keymap('v', '<F9>', 'zf', {})
-- Copy and paste
vim.api.nvim_set_keymap('v', '<C-c>', '"+yi', {})
vim.api.nvim_set_keymap('v', '<C-x>', '"+c', {})
-- Duplicate line
vim.api.nvim_set_keymap('v', '∂', 'yP', {})
vim.api.nvim_set_keymap('v', 'ä', 'yP', {})
