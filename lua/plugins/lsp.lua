return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		{
			"mason-org/mason-lspconfig.nvim",
			opts = {
				ensure_installed = {
					-- LSPs
					"lua_ls",
					"gopls",
					"bashls",
					"html",
					"cssls",
					"ts_ls",

					-- Linters and formatters
					"stylua",
					"ruff",
				},
			},
		},
		{ "hrsh7th/nvim-cmp" },
	},

	config = function()
		vim.diagnostic.config({
			virtual_text = true,
			severity_sort = true,
			float = { border = "rounded" },
			underline = false,
		})

		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(event)
				local map = function(keys, action)
					vim.keymap.set("n", keys, action, { buffer = event.buf })
				end

				map("gr", require("telescope.builtin").lsp_references)
				map("gd", require("telescope.builtin").lsp_definitions)
				map("gt", require("telescope.builtin").lsp_type_definitions)
				map("gI", require("telescope.builtin").lsp_implementations)
				map("<leader>D", require("telescope.builtin").diagnostics)

				map("<leader>d", vim.diagnostic.open_float)
			end,
		})
	end,
}
