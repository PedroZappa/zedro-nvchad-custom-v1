local opt = vim.opt
local autocmd = vim.api.nvim_create_autocmd

-- Options--
-- Line Numbers
opt.number = true
opt.numberwidth = 4
opt.relativenumber = true
opt.ignorecase = true
opt.smartcase = true
opt.ruler = true

-- Cursor
opt.cursorcolumn = true
opt.cursorline = true
-- opt.cursorlineopt = 'rgba:1/1/1/50'
opt.colorcolumn = '80';
--opt.highlight.CursorLine = { gui = "underline" }
opt.whichwrap = '<,>'

-- Tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
-- Buffer tabs 
opt.showtabline = 2
opt.winbar = '=%=%k %r %h %m %f %w'
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
opt.showmode = true

-- Spelling
--- Enable spell check for .md and .txt files
autocmd("BufRead,BufNewFile", {
	pattern = { "*.md", "*.txt", "*.norg" },
	callback = function()
		vim.opt_local.spell = true
		vim.opt_local.spelllang = "en"
	end,
})

-- Time
vim.opt.updatetime = 50

-- Other
vim.opt.isfname:append("@-@")
vim.opt.signcolumn = "yes"

-- Autocommands
--

-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})

-- FileType Autocommands
vim.api.nvim_exec([[
	augroup filetype_vim
		autocmd!
		autocmd FileType html,markdown setlocal tabstop=4 shiftwidth=4
	augroup END
]], false)

-- Set the cursor line to have a line at the bottom
vim.cmd [[
  autocmd BufEnter * highlight CursorLine gui=underline
]]

-- Conceal in Neorg 
vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.norg"},
  command = "set conceallevel=3"
})

-- Vim Commands
-- Set the cursor line to have a line at the bottom
--vim.cmd('highlight CursorLine gui=underline cterm=underline')
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

-- 42 hEADER sETTINGS
vim.g.user42 = 'passunca'
vim.g.mail42 = 'passunca@student.42porto.com'

