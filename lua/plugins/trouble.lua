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

		local t = require("trouble")

		vim.keymap.set("n", "<leader>ds", function()
			t.toggle("diagnostics")
		end)
		vim.keymap.set("n", "[d", function()
			t.next({ jump = true })
		end)
		vim.keymap.set("n", "]d", function()
			t.prev({ jump = true })
		end)
	end,
}
