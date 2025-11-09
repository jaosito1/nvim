return {
	"saghen/blink.cmp",
	version = "1.*",
	opts = {
		-- TODO check if C-y to accept feels less annoying
		-- or just keep enter but with preselect on false
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
			keyword = { range = "full" },
			list = { selection = { preselect = false } },
		},
		sources = { default = { "lsp", "path", "buffer" } },
		signature = { enabled = true },
	},
	opts_extend = { "sources.default" },
}
