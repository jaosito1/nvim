return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local colors = {
			main_bg = "#0f0f0f",
			white = "#fafafa",
			green = "#5e6b65",
			beige = "#e6dfd0",
			yellow = "#af8700",
			red = "#af5f5f",
		}

		local theme = {
			normal = {
				a = { bg = colors.main_bg, fg = colors.white },
				b = { bg = colors.main_bg, fg = colors.white },
				c = { bg = colors.main_bg, fg = colors.white },
				x = { bg = colors.main_bg, fg = colors.white },
				y = { bg = colors.main_bg, fg = colors.white },
				z = { bg = colors.main_bg, fg = colors.white },
			},
			insert = {
				a = { bg = colors.main_bg, fg = colors.white },
				z = { bg = colors.main_bg, fg = colors.white },
			},
			visual = {
				a = { bg = colors.main_bg, fg = colors.white },
				z = { bg = colors.main_bg, fg = colors.white },
			},
		}

		require("lualine").setup({
			options = {
				disabled_filetypes = { "neo-tree", "fugitive" },
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				theme = theme,
				fmt = string.lower,
			},
			sections = {
				lualine_a = {
					{
						"mode",
						fmt = function(str)
							return str:sub(1, 1)
						end,
					},
				},
				lualine_b = { "branch" },
				lualine_c = {
					{
						"diff",
						colored = true,
						diff_color = {
							added = { fg = colors.green },
							modified = { fg = colors.yellow },
							removed = { fg = colors.red },
						},
						symbols = { added = " ", modified = "󰿡 ", removed = " " },
					},
				},
				lualine_x = { "diagnostics" },
				lualine_y = { "lsp_status" },
				lualine_z = { "filetype" },
			},
		})
	end,
}
