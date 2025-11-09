-- local P = {
-- 	"html",
-- 	"css",
-- 	"json",
-- 	"javascript",
-- 	"typescript",
-- 	"javascriptreact",
-- 	"typescriptreact",
-- }

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
			},
		})

		vim.keymap.set("n", "<leader>ff", function()
			require("conform").format({ bufnr = 0 })
		end)

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
}
