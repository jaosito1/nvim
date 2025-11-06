vim.g.mapleader = " "
vim.g.maplocalleader = " "

local key = vim.keymap.set

key("n", "<leader>w", ":write<CR>")
key("n", "<leader>q", ":quit<CR>")
key("n", "<leader>Q", ":quitall<CR>")

key("v", "J", ":m '>+1<CR>gv=gv")
key("v", "K", ":m '<-2<CR>gv=gv")

key("n", "J", "mzJ`z")

key("v", "<C-d>", "<C-d>zz")
key("v", "<C-u>", "<C-u>zz")

key("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

key("n", "<C-k>", "<cmd>cnext<CR>zz")
key("n", "<C-j>", "<cmd>cprev<CR>zz")

key("n", "<leader>lv", ":vsplit<CR>")
key("n", "<leader>lh", ":split<CR>")

-- navigation for f(char) and t(char)
key("n", ";", ",")
key("n", "'", ";")

key("n", ",", ":b #<CR>") -- go to prev. file
key("v", "<leader>yy", '"+y')

key("n", "-", "<cmd>Ex<CR>")
