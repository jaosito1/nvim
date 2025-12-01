return {
	{
		"vague2k/vague.nvim",
		lazy = false,
		opts = {
			transparent = false,
		},
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			styles = {
				transparency = false,
			},
			palette = {
				main = {
					base = "#000000",
				},
			},
		},
	},
	{
		"aktersnurra/no-clown-fiesta.nvim",
		config = function()
			require("no-clown-fiesta").setup({
				theme = "dark", -- supported themes are: dark, dim, light
				transparent = false, -- Enable this to disable the bg color
			})
		end,
	},
}
