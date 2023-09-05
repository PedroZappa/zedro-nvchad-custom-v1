local plugins = {
  -- Defaults for LSP servers
  {
    'neovim/nvim-lspconfig',
    config = function ()
      -- NvChad config
      require 'plugins.configs.lspconfig'
      -- Zedro's config
      require 'custom.configs.lspconfig'
    end
  },
  -- Package Manager for LSP, DAPs, linters & formatters
  {
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        "clangd"
      }
    }
  }
}

return plugins
