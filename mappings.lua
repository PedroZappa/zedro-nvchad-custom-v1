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
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<F4>"] = {
      "<cmd>lua require('dapui').toggle()<CR>",
      "Toggle DAP UI",
    },
    ["<F5>"] = {
      "<cmd>lua require('dap').toggle_breakpoint()<CR>",
      "Toggle breakpoint",
    },
    ["<F9>"] = {
      "<cmd>lua require('dap').continue()<CR>",
      "Continue execution",
    },
    ["<F1>"] = {
      "<cmd>lua require('dap').step_over()<CR>",
      "Step over execution",
    },
    ["<F2>"] = {
      "<cmd>lua require('dap').step_into()<CR>",
      "Step into execution",
    },
    ["<F3>"] = {
      "<cmd>lua require('dap').step_out()<CR>",
      "Step out of execution",
    },
         ["<Leader>dsc"] = {
      "<cmd>lua require('dap').continue()<CR>",
      "Continue execution",
    },
    ["<Leader>dsv"] = {
      "<cmd>lua require('dap').step_over()<CR>",
      "Step over execution",
    },
    ["<Leader>dsi"] = {
      "<cmd>lua require('dap').step_into()<CR>",
      "Step into execution",
    },
    ["<Leader>dso"] = {
      "<cmd>lua require('dap').step_out()<CR>",
      "Step out of execution",
    },
    ["<Leader>dhh"] = {
      "<cmd>lua require('dap.ui.variables').hover()<CR>",
      "Hover over variable",
    },
    ["<Leader>dhv"] = {
      "<cmd>lua require('dap.ui.variables').visual_hover()<CR>",
      "Visual hover over variable",
    },
    ["<Leader>duh"] = {
      "<cmd>lua require('dap.ui.widgets').hover()<CR>",
      "Hover over widget",
    },
    ["<Leader>duf"] = {
      "<cmd>lua local widgets=require('dap.ui.widgets');widgets.centered_float(widgets.scopes)<CR>",
      "Center float widget",
    },
    ["<Leader>dro"] = {
      "<cmd>lua require('dap').repl.open()<CR>",
      "Open REPL",
    },
    ["<Leader>drl"] = {
      "<cmd>lua require('dap').repl.run_last()<CR>",
      "Run last in REPL",
    },
    ["<Leader>dbc"] = {
      "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
      "Set breakpoint with condition",
    },
    ["<Leader>dbm"] = {
      "<cmd>lua require('dap').set_breakpoint({ nil, nil, vim.fn.input('Log point message: ') })<CR>",
      "Set logpoint message",
    },
    ["<Leader>dbt"] = {
      "<cmd>lua require('dap').toggle_breakpoint()<CR>",
      "Toggle breakpoint",
    },
    ["<Leader>dc"] = {
      "<cmd>lua require('dap.ui.variables').scopes()<CR>",
      "Show variable scopes",
    },
    ["<Leader>di"] = {
      "<cmd>lua require('dapui').toggle()<CR>",
      "Toggle DAP UI",
    },
  }
}

return M
