local a = vim.api
-- General
-- Set leader to space
a.nvim_set_keymap('n', '<space>', '<leader>', {})
a.nvim_set_keymap('x', '<space>', '<leader>', {})
a.nvim_set_keymap('n', '<space><space>', '<leader><leader>', {})
a.nvim_set_keymap('x', '<space><space>', '<leader><leader>', {})

-- Insert Mode
-- Folding
a.nvim_set_keymap('i', '<F9>', '<C-O>za', {})
-- Ctrl-e just to the end of the line
a.nvim_set_keymap('i', '<C-e>', '<C-o>A', {})
-- Navigation
a.nvim_set_keymap('i', '<C-k>', '<Up>', {})
a.nvim_set_keymap('i', '<C-j>', '<Down>', {})
a.nvim_set_keymap('i', '<C-l>', '<Right>', {})
a.nvim_set_keymap('i', '<C-h>', '<Left>', {})
-- Delete word backwards
a.nvim_set_keymap('i', 'ÿ', '<C-o>dvb', {})

-- Normal Mode
-- Mappings to move lines
a.nvim_set_keymap('n', '<A-J>', ':m .+1<CR>==', {})
a.nvim_set_keymap('n', 'Ê', ':m .+1<CR>==', {})
a.nvim_set_keymap('n', '<A-K>', ':m .-2<CR>==', {})
a.nvim_set_keymap('n', 'Ë', ':m .-2<CR>==', {})
-- Folding
a.nvim_set_keymap('n', '<F9>', 'za', {})
-- Add a semicolon and comma to end of line
a.nvim_set_keymap('n', '…', 'A;<Esc>', {})
a.nvim_set_keymap('n', '≤', 'A,<Esc>', {})
-- Select all
a.nvim_set_keymap('n', '<C-a>', 'GVgg', {})
-- Auto indent complete file
a.nvim_set_keymap('n', '<leader>l', 'mzgg=G`z', {})
-- No highlight search
a.nvim_set_keymap('n', '<leader>m', ':noh<CR>', {})
-- Close buffer
a.nvim_set_keymap('n', '<leader>q', ':q<CR>', {})
-- Close buffer forcing
a.nvim_set_keymap('n', '<leader>Q', ':q!<CR>', {})
-- Close and save
a.nvim_set_keymap('n', '<leader>x', ':x<CR>', {})
-- Write file
a.nvim_set_keymap('n', '<leader>w', ':w<CR>', {})
-- Write all files
a.nvim_set_keymap('n', '<leader>wa', ':wa<CR>', {})
-- Navigate panes
a.nvim_set_keymap('n', '<C-h>', '<C-W><C-H>', {})
a.nvim_set_keymap('n', '<C-j>', '<C-W><C-J>', {})
a.nvim_set_keymap('n', '<C-k>', '<C-W><C-K>', {})
a.nvim_set_keymap('n', '<C-l>', '<C-W><C-L>', {})

-- Set key bindings for duplicating lines in normal and visual modes.
a.nvim_set_keymap('n', '<leader>d', 'yyp', { noremap = true, silent = true })
a.nvim_set_keymap('v', '<leader>d', 'yP', { noremap = true, silent = true })

-- Set key bindings for duplicating lines in normal and visual modes.
-- a.nvim_set_keymap('n', '<leader>d', ':let @x=@"<CR>:normal! "xP<CR>', { noremap = true, silent = true })
-- a.nvim_set_keymap('v', '<leader>d', ':let @x=@"<CR>:normal! gv"xp<CR>', { noremap = true, silent = true })

-- Split line at cursor and return to normal mode
a.nvim_set_keymap('n', 'K', 'i<CR><Esc>', { noremap = true, silent = true })
-- Quickly edit/reload the vimrc file
a.nvim_set_keymap('n', '<leader>ec', ':e $MYVIMRC<CR>', {})
a.nvim_set_keymap('n', '<leader>sc', ':so $MYVIMRC<CR>:echo "Reloaded Config"<CR>', {})
-- New line without going into insert mode
a.nvim_set_keymap('n', '<A-CR>', 'O<Esc>', {})
a.nvim_set_keymap('n', '<CR>', 'o<Esc>', {})
-- Go to the end of line and delete char Alt-l
a.nvim_set_keymap('n', 'ì', '<Esc>$x<Esc>', {})
a.nvim_set_keymap('n', '¬', '<Esc>$x<Esc>', {})
-- Open file under cursor
a.nvim_set_keymap('n', '<C-W>f', 'gf', {})
-- Open file under cursor in split
a.nvim_set_keymap('n', '<C-W><C-F>', '<C-W>vgf', {})
-- Create a key mapping to indent text
a.nvim_set_keymap('n', '<D-]>', '>>', {})
a.nvim_set_keymap('n', '<D-[>', '<<', {})
-- Previous and Next Tab
a.nvim_set_keymap('n', '∆', 'gT', {})
a.nvim_set_keymap('n', '˚', 'gt', {})

-- Visual Mode
-- Mappings to move lines
a.nvim_set_keymap('v', '<A-J>', ":m '>+1<CR>gv=gv", {})
a.nvim_set_keymap('v', 'Ê', ":m '>+1<CR>gv=gv", {})
a.nvim_set_keymap('v', '<A-K>', ":m '<-2<CR>gv=gv", {})
a.nvim_set_keymap('v', 'Ë', ":m '<-2<CR>gv=gv", {})
-- Folding
a.nvim_set_keymap('v', '<F9>', 'zf', {})
-- Copy and paste
a.nvim_set_keymap('v', '<C-c>', '"+yi', {})
a.nvim_set_keymap('v', '<C-x>', '"+c', {})
-- Duplicate line
a.nvim_set_keymap('v', '∂', 'yP', {})
a.nvim_set_keymap('v', 'ä', 'yP', {})
