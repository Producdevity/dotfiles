-- Whitespace
vim.wo.list = true
vim.wo.listchars = "tab:»·,trail:·"

-- General
vim.o.background = 'dark'
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.title = true
vim.o.hidden = true
vim.o.errorbells = false
vim.o.autoindent = true
vim.o.copyindent = true
vim.wo.wrap = false
vim.wo.foldmethod = 'manual'
vim.o.lazyredraw = true
vim.o.encoding = 'utf-8'
vim.opt.clipboard = "unnamedplus"
vim.o.showcmd = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.pastetoggle = '<F2>'
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.synmaxcol = 512
vim.o.autoread = true
vim.o.autowrite = true
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.wo.signcolumn = 'auto'
vim.o.backspace = '2'
vim.wo.cursorline = true
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.guicursor = 'n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20'

-- Splits
vim.o.splitright = true
vim.o.splitbelow = true

-- Tabs
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

-- Mouse
vim.o.mouse = 'a'
vim.o.ttyfast = true
vim.o.t_Co = '256'

-- History
vim.o.writebackup = false
vim.o.history = 1000
vim.o.swapfile = false
vim.o.backup = false

-- Persistent undo
vim.o.undodir = '~/.vim/undo/'
vim.o.undofile = true
vim.o.undolevels = 1000
vim.o.undoreload = 10000

-- Clipboard
if os.getenv('TMUX') == nil then
  vim.opt.clipboard:append(",unnamed")
end

-- Shell
if string.match(vim.o.shell, 'fish$') then
  vim.o.shell = 'sh'
end

-- Colorcolumn
if vim.wo.colorcolumn ~= "" then
  vim.wo.colorcolumn = '+' .. table.concat(vim.tbl_map(function(i) return i .. ',+' end, vim.fn.range(0, 254)), '')
end

-- Regexpengine
vim.o.regexpengine = 1

-- Cursor shape TODO: Check which one to use
-- os.setenv('NVIM_TUI_ENABLE_CURSOR_SHAPE', '1')
vim.fn.setenv('NVIM_TUI_ENABLE_CURSOR_SHAPE', '1')

