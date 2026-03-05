return {
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({
				"*",
				css = { mode = "background" },
			}, { mode = "foreground" })
		end,
	},
	{
		"windwp/nvim-ts-autotag",
		lazy = true,
		ft = { "html", "javascriptreact", "typescriptreact", "javascript" },
		config = function()
			require("nvim-ts-autotag").setup({
				opts = {
					-- Defaults
					enable_close = true, -- Auto close tags
					enable_rename = true, -- Auto rename pairs of tags
					enable_close_on_slash = false, -- Auto close on trailing </
				},
				-- Also override individual filetype configs, these take priority.
				-- Empty by default, useful if one of the "opts" global settings
				-- doesn't work well in a specific filetype
				per_filetype = {
					["html"] = {
						enable_close = true,
					},
				},
			})
		end,
	},
}
