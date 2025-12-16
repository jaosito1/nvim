require("config.set")
require("config.keymaps")
require("config.lazy")

vim.cmd("colorscheme no-clown-fiesta-dark")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local yank_group = augroup("HighlightYank", {})
autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 40,
		})
	end,
})

local user_group = augroup("UserGroup", {})
autocmd("BufEnter", {
	group = user_group,
	pattern = "*.tsx,*.jsx,*.html,*.css,*.js,*.ts,*.tex",
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.softtabstop = 2
		vim.bo.shiftwidth = 2
	end,
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
