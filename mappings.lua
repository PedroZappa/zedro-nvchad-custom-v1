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

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Give exec permission to file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Source Neovim
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
  end
)

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

-- Codeium Keybings
vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
vim.keymap.set('i', '<c-<>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
vim.keymap.set('i', '<c->>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })

-- nvim-dap key mappings
M.dap = {
  -- Mappings appear only when explicitly loaded
  plugin = true,
  -- Normal Mode mappings
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    }
  }
}

return M
