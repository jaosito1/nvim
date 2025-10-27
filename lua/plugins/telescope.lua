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
		vim.keymap.set("n", "<leader>ff", builtin.git_files, { desc = "Telescope find git files" })
		vim.keymap.set("n", "<leader>fa", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>ft", builtin.colorscheme, { desc = "Telescope colorschemes" })
	end,
}
