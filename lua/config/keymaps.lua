vim.g.mapleader = " "
vim.g.maplocalleader = " "

local key = vim.keymap.set

key("n", "<leader>w", "<CMD>w<CR>")
key("n", "<leader>q", "<CMD>q<CR>")

key("v", "J", ":m '>+1<CR>gv=gv")
key("v", "K", ":m '<-2<CR>gv=gv")

key("n", "J", "mzJ`z")

key("v", "<C-d>", "<C-d>zz")
key("v", "<C-u>", "<C-u>zz")

key("n", "<leader>ss", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- replace word under cursor

key("n", "<C-k>", "<cmd>cnext<CR>zz")
key("n", "<C-j>", "<cmd>cprev<CR>zz")

key("n", "'", ",") -- navigation for f / F 

key("n", ",", ":b #<CR>") -- go to prev. file

key("x", "<leader>p", [["_dP]]) -- paste without losing yank

key("v", "<leader>yy", '"+y')

key("n", "<esc>", "<cmd>nohl<CR>")

key("n", "<leader>ee", "oif err != nil {<CR>}<ESC>Oreturn err<ESC>")
