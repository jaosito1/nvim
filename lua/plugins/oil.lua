return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	opts = {
		keymaps = {
			["q"] = "actions.close",
		},
		view_options = {
			show_hidden = true,
		},
		skip_confirm_for_simple_edits = true,
	},
}
