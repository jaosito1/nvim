return {
	"folke/trouble.nvim",
	config = function()
		require("trouble").setup({
			icons = { indent = {
				middle = " ",
				last = " ",
				top = " ",
				ws = "│  ",
			} },
			modes = {
				diagnostics = {
					groups = {
						{ "filename", format = "{file_icon} {basename:Title} {count}" },
					},
				},
			},
		})

		vim.diagnostic.config({
			virtual_text = true,
			severity_sort = true,
			underline = false,
		})

		vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float)

		vim.keymap.set("n", "<leader>ds", function()
			require("trouble").toggle("diagnostics")
		end)
		vim.keymap.set("n", "[d", function()
			require("trouble").next({ jump = true })
		end)
		vim.keymap.set("n", "]d", function()
			require("trouble").prev({ jump = true })
		end)
	end,
}
