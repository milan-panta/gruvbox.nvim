local config = {}

---@class Options
config.options = {
	---Differentiate between active and inactive windows and panels.
	dim_inactive_windows = false,

	---Extend background behind borders.
	extend_background_behind_borders = false,

	enable = {
		terminal = true,
	},

	styles = {
		bold = true,
		italic = true,
		transparency = false,
	},

	---@type table<string, string>
	groups = {
		border = "fg4",
		link = "purple_lite",
		panel = "bg_second",

		error = "red_lite",
		hint = "aqua_lite",
		info = "blue_lite",
		ok = "green_lite",
		warn = "yellow_lite",
		note = "yellow_dark",
		todo = "aqua_dark",

		git_add = "green_dark",
		git_change = "yellow_dark",
		git_delete = "red_dark",
		git_dirty = "orange_dark",
		git_ignore = "gray",
		git_merge = "purple_dark",
		git_rename = "blue_dark",
		git_stage = "purple_dark",
		git_text = "yellow_lite",
		git_untracked = "bg2",

		h1 = "red_lite",
		h2 = "yellow_lite",
		h3 = "green_lite",
		h4 = "aqua_lite",
		h5 = "blue_lite",
		h6 = "purple_lite",
	},

	---@type table<string, table>
	highlight_groups = {},

	---Called before each highlight group, before setting the highlight.
	---@diagnostic disable-next-line: unused-local
	before_highlight = function(group, highlight, palette) end,
}

---@param options table | nil
function config.extend_options(options)
	config.options = vim.tbl_deep_extend("force", config.options, options or {})
end

return config
