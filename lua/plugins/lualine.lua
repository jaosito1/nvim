return {
	"nvim-lualine/lualine.nvim",
	-- dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			disabled_filetypes = { "neo-tree" },
			component_separators = { left = "|", right = "|" },
			section_separators = { left = "", right = "" },
			theme = "iceberg_dark",
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch", "diff" },
			lualine_c = { "filename" },
			lualine_x = { "filetype" },
			lualine_y = { "diagnostics" },
			lualine_z = { "lsp_status" },
		},
	},
}
