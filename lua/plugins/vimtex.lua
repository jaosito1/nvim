return {
	"lervag/vimtex",
	dependencies = {
		"let-def/texpresso.vim",
	},
	init = function()
		vim.g.vimtex_view_method = "skim"

		local au_group = vim.api.nvim_create_augroup("vimtex_events", {})

		-- Cleanup on quit
		vim.api.nvim_create_autocmd("User", {
			pattern = "VimtexEventQuit",
			group = au_group,
			command = "VimtexClean",
		})

		-- Focus the terminal after inverse search
		vim.api.nvim_create_autocmd("User", {
			pattern = "VimtexEventViewReverse",
			group = au_group,
			command = "call b:vimtex.viewer.xdo_focus_vim()",
		})
	end,
}
