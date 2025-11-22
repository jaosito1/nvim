return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		opts = {
			ensure_installed = {
                "latex",
				"lua",
				"go",
				"python",
				"javascript",
				"typescript",
				"bash",
			},
			sync_install = true,
			auto_install = true,
			highlight = {
				enable = true,
				disable = { "latex" },
			},
			indent = {
				enable = true,
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		opts = {},
	},
}
