local M = {}

-- set leader
vim.g.mapleader = " "

-- General Mappings
M.general = {
	n = {
		-- Replace Script
		["<leader>s"] = {
			[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
			"Replace word from whole file"
		},
		-- Resizing Window
		["<C-up>"] = { "<C-w>+", "Up" },
		["<C-down>"] = { "<C-w>-", "Down" },
		["<C-left>"] = { "<C-w>>", "Left" },
		["<C-right>"] = { "<C-w><", "Right" },
		-- Give exec permission to file
		["<leader>cx"] = { "<cmd>!chmod +x %<CR>", "Give exec permission to file" },
		-- Source Neovim
		["<leader><leader>"] = { "<cmd>so %<CR>", "Source Neovim" },
		-- Oil Mappings
		-- ["<leader>o"] = { "<cmd>Oil<CR>", "Oil Mappings" },
	},
	i = {		
		-- Codeium Keybings
		-- ["<C-g>"] = { function() return vim.fn['codeium#Accept']() end, { expr = true } },
		-- ["<C-x>"] = { function() return vim.fn['codeium#Clear']() end, { expr = true } },
	},
	v = {
		-- Move selected blocks of code around
		["J"] = { ":m '>+1<CR>gv=gv", "Move selected lines down" },
		["K"] = { ":m '<-2<CR>gv=gv", "Move selected lines up" },
	},
}

-- formatting
-- trim whitespace from the end of every line
vim.api.nvim_set_keymap('n', '<leader>trm', ':%s/\\s\\+$//<CR>', { noremap = true, silent = true })

-- nvim-tree key mappings
vim.keymap.set('n', '<C-n>', ':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>')

-- undotree key mappings
-- Keymap Toggle
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Fugitive (Git integration)
-- Keymap: GitStatus
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
-- lazygit
vim.keymap.set("n", "<leader>gg", "<Cmd>LazyGit<CR>")

-- Codeium Keybings
vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
vim.keymap.set('i', '<C-x>', function () return vim.fn['codeium#Clear']() end, { expr = true })

-- nvim-dap key mappings
M.dap = {
	-- Mappings appear only when explicitly loaded
	plugin = true,
	-- Normal Mode mappings
	n = {
	}
}

-- Oil Mappings
vim.keymap.set('n', '<leader>o', ':Oil<CR>')

return M
