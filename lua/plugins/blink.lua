return {
	-- TODO customize to stop bothering with auto suggestion on react files
	-- jsx, html, css, jx, tsx, ts

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
		},
		sources = {
			default = { "lsp", "path", "snippets" },
		},
		signature = { enabled = true },
		fuzzy = {
			sorts = {
				function(a, b)
					if (a.client_name == nil or b.client_name == nil) or (a.client_name == b.client_name) then
						return
					end
					return b.client_name == "emmet_ls"
				end,
				-- default sorts
				"score",
				"sort_text",
			},
		},
	},
	opts_extend = { "sources.default" },
}
