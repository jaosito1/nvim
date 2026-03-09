return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		lazy = false, -- neo-tree will lazily load itself
		config = function()
			vim.keymap.set("n", "-", "<CMD>Neotree toggle filesystem reveal<CR>")

			require("neo-tree").setup({
				close_if_last_window = true,
				window = {
					mappings = {
						["<cr>"] = function(state)
							local tree_win = vim.api.nvim_get_current_win()
							local node = state.tree:get_node()
                            state.commands["open"](state)

							if node.type == "file" then
								vim.api.nvim_set_current_win(tree_win)
							end
						end,
                        ["s"] = function (state)
                            state.commands["open_vsplit"](state)
                            state.commands["close_window"](state)
                        end
					},
				},
			})
		end,
	},
}
