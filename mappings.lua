local M = {}

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
