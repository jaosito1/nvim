return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
		keymap = {
			preset = "default",

			["<S-Tab>"] = { "select_prev", "fallback" },
			["<Tab>"] = { "select_next", "fallback" },
			["<Enter>"] = { "accept", "fallback" },
			["<C-c>"] = { "hide", "fallback" },
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = {
			documentation = { auto_show = true },
			-- menu = {
			-- -- Add delay for suggestion on .jsx files
			-- 	 auto_show_delay_ms = function(ctx, items)
			-- 	 	return vim.bo.filetype == "javascriptreact" and 325 or 0
			-- 	 end,
			-- },
		},
		sources = {
			default = { "lsp", "path", "snippets" },
		},
		signature = { enabled = true },
	},
	opts_extend = { "sources.default" },
}
