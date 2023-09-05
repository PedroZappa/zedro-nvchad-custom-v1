---@type ChadrcConfig
local M = {}

-- Set Theme
M.ui = { theme = 'nightowl' }

-- Plugins
M.plugins = "custom.plugins"

-- Mappings
M.mappings = require('custom.mappings')

-- Custom Settings
require('custom.set')

return M
