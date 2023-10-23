local M = {}

-- set leader
vim.g.mapleader = " "

M.general = {
	n = {
		-- Source Neovim
		["<leader><leader>"] = { "<cmd>so %<CR>", "Source Neovim" },
		-- Open Options
		["<leader>o"] = { ":vert options<CR>", "Open Options in a vertical split" },
		-- Close Buffer
		["<leader>bd"] = { ":clo<CR>", "Close active buffer" },
		-- Cycle through open buffers
		["<leader>bn"] = { ":bnext<CR>", "Next buffer" },
		["<leader>bp"] = { ":bprevious<CR>", "Previous buffer" },
		-- Replace Script
		["<leader>s"] = {
			[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
			"Replace word from whole file"
		},
		-- Inserting lines
		["o"] = { "o<ESC>", "Insert new line below" },
		["O"] = { "O<ESC>", "Insert new line above" },
		-- Trim Trailing blanks
		["<leader>trm"] = {
			":%s/\\s\\+$//<CR>", "Trim Trailing whitespaces",
			opts = { noremap = true, silent = true, }
		},
		-- Resizing Window
		["<C-up>"] = { "<C-w>+", "Up" },
		["<C-down>"] = { "<C-w>-", "Down" },
		["<C-left>"] = { "<C-w>>", "Left" },
		["<C-right>"] = { "<C-w><", "Right" },
		-- Give exec permission to file
		["<leader>cx"] = { ":!chmod +x %<CR>", "Give exec permission to file" },
		--
		-- Plugin Mappings
		-- Oil Mappings
		["-"] = { ":Oil --float<CR>", "Open Parent Directory with Oil" },
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
			":term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:vs<CR>:term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:vs<CR>:term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:vs<CR>:term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR><C-w>h:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR><C-w>h:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR><C-w>h:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR>:set nonu<CR>:set nornu<CR>:spl<CR>:term curl parrot.live<CR>:set winbar=\"\"<CR>:set nonu<CR>:set nornu<CR>", "Parrot Party!!!"
		},
	},
	v = {
		-- Move selected blocks of code around
		["J"] = { ":m '>+1<CR>gv=gv", "Move selected lines down" },
		["K"] = { ":m '<-2<CR>gv=gv", "Move selected lines up" },
		-- Yank selection and search for it in C files
		["<leader>ys"] = { ':<C-U>exe "grep /" .. escape(@", \'\\\\/\') .. "/ *.c *.h"<CR>', {noremap = true} },
	},
	i = {
		-- Codeium Mappings
		["<C-g>"] = { function() return vim.fn['codeium#Accept']() end, "Codeium Accept", opts = { expr = true }},
		["<C-x>"] = { function() return vim.fn['codeium#Clear']() end, "Codeium Clear", opts = { expr = true }},
		["<M-]>"] = { function() return vim.fn['codeium#CycleCompletions'](1) end, "Cycle Completions: Next", opts = { expr = true }},
		["<M-[>"] = { function() return vim.fn['codeium#CycleCompletions'](-1) end, "Cycle Completions: Prev", opts = { expr = true }},
		-- Manually trigger suggestions
		["<C-Bslash>"] = { function() return vim.fn['codeium#Complete']() end, "Codeium Manually Trigger Suggestion", opts = { expr = true }},
	}
}

-- nvim-dap key mappings
M.dap = {
	-- Mappings appear only when explicitly loaded
	plugin = true,
	-- Normal Mode mappings
	n = {
	}
}

return M
