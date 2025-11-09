return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		{ "artemave/workspace-diagnostics.nvim" },
		{
			"mason-org/mason-lspconfig.nvim",
			opts = {
				ensure_installed = {
					-- LSPs
					"lua_ls",
					"gopls",
					"html",
					"cssls",
					"ts_ls",
					"tailwindcss",

					-- Linters and formatters
					"stylua",
				},
			},
		},
	},

	config = function()
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

		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})

        -- TODO not working :*
		vim.lsp.config("ts_ls", {
			on_attach = function(client, bufnr)
				require("workspace-diagnostics").populate_workspace_diagnostics(client, bufnr)
                print("hello world")
			end,
		})
	end,
}
