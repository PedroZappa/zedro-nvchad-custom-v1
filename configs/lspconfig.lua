-- Import Base NvChad LSP config
local base = require('plugins.configs.lspconfig')

-- Import Base Functions
local on_attach = base.on_attach
local capabilities = base.capabilities

--
-- Import Zedro's LSP config
--
-- [ Disregard IDE warning: They shouldn't effect the config ]
local lspconfig = require('lspconfig')

-- Call setup function of 'clangd' on lspconfig plugin 
lspconfig.clangd.setup {
  -- add function for on_attach value
  on_attach = function (client, bufnr)
    -- small overrides to fix bug within NvChad & 'clangd'
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}
