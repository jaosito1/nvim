vim.g.mapleader = " "
vim.g.maplocalleader = " "

local key = vim.keymap.set

key("n", "<leader>w", ":write<CR>")
key("n", "<leader>q", ":quit<CR>")

key("v", "J", ":m '>+1<CR>gv=gv")
key("v", "K", ":m '<-2<CR>gv=gv")

key("n", "J", "mzJ`z")

key("v", "<C-d>", "<C-d>zz")
key("v", "<C-u>", "<C-u>zz")

key("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- replace word under cursor

key("n", "<C-k>", "<cmd>cnext<CR>zz")
key("n", "<C-j>", "<cmd>cprev<CR>zz")

key("n", "'", ",") -- navigation for f / F 

key("n", ",", ":b #<CR>") -- go to prev. file

key("v", "<leader>yy", '"+y')

key("n", "-", "<cmd>Ex<CR>")
