local M = {}

-- set leader
vim.g.mapleader = " "

M.general = {
	n = {
		-- Source Neovim
		["<leader><leader>"] = { "<cmd>so %<CR>", "Source Neovim" },
		-- Replace Script
		["<leader>s"] = {
			[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
			"Replace word from whole file"
		},
		-- Trim Trailing blanks
		["<leader>trm"] = {
			":%s/\\s\\+$//<CR>", "Trim Trailing whitespaces",
			opts = {
				noremap = true,
				silent = true,
			}
		},
		-- Resizing Window
		["<C-up>"] = { "<C-w>+", "Up" },
		["<C-down>"] = { "<C-w>-", "Down" },
		["<C-left>"] = { "<C-w>>", "Left" },
		["<C-right>"] = { "<C-w><", "Right" },
		-- Give exec permission to file
		["<leader>cx"] = { ":!chmod +x %<CR>", "Give exec permission to file" },
		-- Oil Mappings
		["<leader>o"] = { ":Oil<CR>", "Oil Mappings" },
		-- Nvimtree Mappings
		["<leader>n"] = { ":NvimTreeToggle<CR>", "NvimTree Toggle" },
		["<leader>e"] = { ":NvimTreeFocus<CR>", "NvimTree Focus" },
		-- Undotree Mappings
		["<leader>u"] = { ":UndotreeToggle<CR>", "Undotree Mappings" },
		-- Fugitive (Git integration) GitStatus
		["<leader>gs"] = { ":Git<CR>", "GitStatus" },
		-- LazyGit
		["<leader>gg"] = { ":LazyGit<CR>", "LazyGit" },
		-- Parrot Crash
		["<leader>pl"] = {
			":term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:vs<CR>:term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:vs<CR>:term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:vs<CR>:term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR><C-w>h:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR><C-w>h:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR><C-w>h:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR>:set winbar=\"\"<CR>:set nonu<CR>:set nornu<CR>",
			"Parrot Party"
		},
		-- ["<leader>pl"] = { ":term curl parrot.live<CR>", "Parrot Crash" },
	},
	v = {
		-- Move selected blocks of code around
		["J"] = { ":m '>+1<CR>gv=gv", "Move selected lines down" },
		["K"] = { ":m '<-2<CR>gv=gv", "Move selected lines up" },
	},
}

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

return M
