local M = {}

local highlights = require("custom.highlights")

M.ui = {
	theme = "gruvbox",
	theme_toggle = { "gruvbox", "one_light" },

	hl_override = highlights.override,
	hl_add = highlights.add,
	tabufline = {
		lazyload = false
	},
}

M.plugins = "custom.plugins"

M.mappings = require("custom.mappings")

return M
