local p = require("gruvbox.palette")
local config = require("gruvbox.config")

local bg_base = p.bg_second
if config.options.styles.transparency then
	bg_base = "NONE"
end

local sec = { bg = bg_base, fg = p.fg4 }

return {
	normal = {
		a = { bg = bg_base, fg = p.blue_lite, gui = "bold" },
		b = sec,
		c = sec,
	},
	insert = {
		a = { bg = bg_base, fg = p.green_lite, gui = "bold" },
		b = sec,
		c = sec,
	},
	visual = {
		a = { bg = bg_base, fg = p.yellow_lite, gui = "bold" },
		b = sec,
		c = sec,
	},
	replace = {
		a = { bg = bg_base, fg = p.orange_lite, gui = "bold" },
		b = sec,
		c = sec,
	},
	command = {
		a = { bg = bg_base, fg = p.purple_lite, gui = "bold" },
		b = sec,
		c = sec,
	},
	inactive = {
		a = { bg = bg_base, fg = p.gray },
		b = { bg = bg_base, fg = p.gray },
		c = { bg = bg_base, fg = p.gray },
	},
}
