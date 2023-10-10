---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

-- Set Theme
M.ui = {
	theme = 'chadracula',
	transparency = true,
	hl_override = highlights.override,
	hl_add = highlights.add,
}

-- Plugins
M.plugins = "custom.plugins"

-- Mappings
M.mappings = require('custom.mappings')

return M
