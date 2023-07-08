-- Define color codes
local dark_red = '#E06C75'
local orange = '#F99575'
local yellow = '#F8BD7F'

-- dark red
vim.cmd(string.format("hi jsxTagName guifg=%s", dark_red))
vim.cmd(string.format("hi jsxComponentName guifg=%s", dark_red))
vim.cmd(string.format("hi jsxCloseTag guifg=%s", dark_red))

-- orange
vim.cmd(string.format("hi jsxDot guifg=%s", orange))
vim.cmd(string.format("hi jsxString guifg=%s", orange))
vim.cmd(string.format("hi jsxCloseString guifg=%s", orange))
vim.cmd(string.format("hi jsxCloseTag guifg=%s", orange))
vim.cmd(string.format("hi jsxCloseTagName guifg=%s", orange))
vim.cmd(string.format("hi jsxEqual guifg=%s", orange))

-- yellow
vim.cmd(string.format("hi jsxAttrib guifg=%s cterm=italic", yellow))
