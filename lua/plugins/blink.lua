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
			keyword = { range = "full" },
			menu = {
				auto_show_delay_ms = function(ctx, items)
                    local delay_ms = 300
					return vim.bo.filetype == "javascriptreact" and delay_ms or 0
				end,
			},
		},
		sources = {
			default = { "lsp", "path", "buffer" },
			min_keyword_length = function()
				return vim.bo.filetype == "javascriptreact" and 2 or 0
			end,
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
