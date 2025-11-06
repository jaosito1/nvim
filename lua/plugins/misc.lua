return {
	{
		"lewis6991/gitsigns.nvim",
	},
	{
		"nvim-mini/mini.pairs",
		version = false,
		opts = {},
	},
	{
		"kylechui/nvim-surround",
		version = "^3.0.0",
		event = "VeryLazy",
		opts = {},
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"ThePrimeagen/vim-be-good",
	},
}
