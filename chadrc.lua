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

	statusline = {
		theme = 'vscode_colored',
	},
	tabufline = {
		lazyload = true,
	},
	nvdash = {
		load_on_startup = true,
		header = {
			"▒███████▒▓█████ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓",
			"▒ ▒ ▒ ▄▀░▓█   ▀ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒",
			"░ ▒ ▄▀▒░ ▒███   ▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░",
			"  ▄▀▒   ░▒▓█  ▄ ▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ",
			"▒███████▒░▒████▒░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒",
			"░▒▒ ▓░▒░▒░░ ▒░ ░░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░",
			"░░▒ ▒ ░ ▒ ░ ░  ░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░",
			"░ ░ ░ ░ ░   ░      ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ",
			"  ░ ░       ░  ░   ░  ░    ░ ░        ░   ░         ░   ",
			"░                                    ░                  ",
		},

		-- header = {
		-- 	"███████╗███████╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
		-- 	"╚══███╔╝██╔════╝██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
		-- 	"  ███╔╝ █████╗  █████╗  ██║   ██║██║   ██║██║██╔████╔██║",
		-- 	" ███╔╝  ██╔══╝  ██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
		-- 	"███████╗███████╗███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
		-- 	"╚══════╝╚══════╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
		-- },
		buttons = {
			{ "  Find File", "Spc f f", "Telescope find_files" },
			{ "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
			{ "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
			{ "  Bookmarks", "Spc m a", "Telescope marks" },
			{ "  Themes", "Spc t h", "Telescope themes" },
			{ "  Mappings", "Spc c h", "NvCheatsheet" },
			{ "󰏇  Get Oily", "-", "Open Oil buffer"},
			{ "  Party!", "Spc p l", ":!curl parrot.live"},
		},
	},
}

-- Plugins
M.plugins = "custom.plugins"

-- Mappings
M.mappings = require('custom.mappings')

return M
