local M = {}

-- set leader
vim.g.mapleader = " "

-- Move selected blocks of code around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Give exec permission to file
vim.keymap.set("n", "<leader>cx", "<cmd>!chmod +x %<CR>", { silent = true })

-- Source Neovim
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
  end
)

-- Resizing Window
vim.keymap.set("n", "<C-up>", "<C-w>+")
vim.keymap.set("n", "<C-down>", "<C-w>-")
vim.keymap.set("n", "<C-left>", "<C-w>>")
vim.keymap.set("n", "<C-right>", "<C-w><")


-- formatting
-- trim whitespace from the end of every line
vim.api.nvim_set_keymap('n', '<leader>trm', ':%s/\\s\\+$//<CR>', { noremap = true, silent = true })



--" Folding and Unfolding
--" Open all folds
--vim.keymap.set("n", "<leader>of", "<cmd>set foldlevel=0<CR>)")
-- Close all folds
--vim.keymap.set("n", "<leader>cf", "<cmd>set foldlevel=99<CR>")
-- Open all folds
vim.api.nvim_set_keymap('n', '<leader>of', ':normal! foldopen=all<CR>', { noremap = true, silent = true })

-- Close all folds
vim.api.nvim_set_keymap('n', '<leader>cf', ':normal! foldclose=all<CR>', { noremap = true, silent = true })


-- nvim-tree key mappings
vim.keymap.set('n', '<C-n>', ':NvimTreeFindFileToggle<CR>')

-- telescope key mappings
  -- All file search
--vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
  -- Git file search
--vim.keymap.set('n', '<C-p>', builtin.git_files, {})
  -- Project search
--vim.keymap.set('n', '<leader>ps', function()
--	builtin.grep_string({ search = vim.fn.input("Grep > ") });
--iend)

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

return M
