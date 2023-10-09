local opt = vim.opt

-- Options--
-- Line Numbers
opt.number = true
opt.numberwidth = 4
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true

-- Cursor
opt.cursorline = true
-- opt.cursorlineopt = 'both'
opt.cursorcolumn = true
opt.whichwrap = '<,>'
-- Set the cursor line to have a line at the bottom
vim.cmd('highlight CursorLine gui=underline cterm=underline')

-- Tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
-- Buffer tabs 
opt.showtabline = 2
-- Indentation
opt.autoindent = true
opt.smartindent = true

-- Scroll
opt.scrolloff = 7
opt.sidescrolloff = 7
-- Fold Marks
opt.fmr = "{{{,}}}"

-- Backup
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- Search
opt.incsearch = true

-- Other
opt.showcmd = true


-- Time
vim.opt.updatetime = 50

-- Other
vim.opt.isfname:append("@-@")
vim.opt.signcolumn = "yes"

-- Autocommands
--
local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})
-- Highlight on yank
vim.cmd [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]]

-- Turn off cursor when changing buffer
vim.cmd [[
  augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
  augroup END
]]

-- FileType Autocommands
vim.api.nvim_exec([[
	augroup filetype_vim
		autocmd!
		autocmd FileType html,markdown setlocal tabstop=4 shiftwidth=4
	augroup END
]], false)

