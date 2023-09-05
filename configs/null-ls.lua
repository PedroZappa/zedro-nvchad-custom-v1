-- Define auto-group for LSP formatting
-- [ To prevent multiple formatters to run on save ]
local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

-- Get Builtin Sources from null-ls
local null_ls = require('null-ls')

local opts = {
  sources = {
    -- clang Formatting
    null_ls.builtins.formatting.clang_format,
  },
  on_attach =  function (client, bufnr)
    -- Check if client supports the formatting command_params
    -- Discards any auto-formatting on save that already exists
    if client.supports_method('textDocument/formatting') then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      -- LSP Formatting auto-cmd on saving
      vim.api.nvim_create_autocmd('BufWritePre', {
        group = augroup,
        buffer = bufnr,
        callback = function ()
          vim.lsp.buf.format({ bufnr = bufnr })
        end
      })
    end
  end
}

return opts
