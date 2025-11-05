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
		"mbbill/undotree",
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
	{
		"ThePrimeagen/vim-be-good",
	},
}
