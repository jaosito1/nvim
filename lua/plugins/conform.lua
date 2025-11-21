return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "goimports", "gofmt" },
				python = { "ruff" },
				javascript = { "prettier" },
				javascriptreact = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
			},
		})

		vim.keymap.set("n", "<leader>ff", function()
			require("conform").format({ bufnr = 0 })
		end)

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				local noAutoFormat = { "lua", "html", "css" }
				for i = 1, #noAutoFormat do
					if vim.bo.filetype == noAutoFormat[i] then
						return
					end
				end

				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
}
