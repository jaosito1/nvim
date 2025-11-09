return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				mappings = {
					i = {
						["<esc>"] = "close",
						["<C-j>"] = require("telescope.actions").move_selection_next,
						["<C-k>"] = require("telescope.actions").move_selection_previous,
					},
				},
				border = true,
			},
			pickers = {
				find_files = {
					theme = "ivy",
				},

				live_grep = {
					theme = "ivy",
				},
			},
		})

		-- TODO change find_files and git_files depending on
		-- if a git repo exists

		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "F", builtin.git_files)
		vim.keymap.set("n", "<leader>fa", builtin.find_files)
		vim.keymap.set("n", "<leader>fg", function()
			builtin.grep_string({ search = vim.fn.input("Grep") })
		end)
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>ft", builtin.colorscheme, { desc = "Telescope colorschemes" })
	end,
}
