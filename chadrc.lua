---@type ChadrcConfig
local M = {}
local opt = vim.opt

-- Set Theme
M.ui = { 
  theme = 'chadracula',
  transparency = true;
}

-- Plugins
M.plugins = "custom.plugins"

-- Mappings
M.mappings = require('custom.mappings')

-- Options--
-- Line Numbers
opt.number = true
opt.numberwidth = 4
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true
-- Tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
-- Buffer tabs 
opt.showtabline = 2
-- Indentation
opt.autoindent = true
opt.smartindent = true

-- Scroll
opt.scrolloff = 15

-- Backup
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- Search
opt.incsearch = true

-- Time
vim.opt.updatetime = 50

-- Other
vim.opt.isfname:append("@-@")
vim.opt.signcolumn = "yes"

-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]


return M
