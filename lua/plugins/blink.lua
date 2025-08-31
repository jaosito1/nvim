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
		},
		appearance = {
			nerd_font_variant = "mono",
		},
		completion = { documentation = { auto_show = true } },
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
	},
	opts_extend = { "sources.default" },
}
