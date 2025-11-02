vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set("n", "<leader>Q", ":quitall<CR>")
vim.keymap.set("n", "<leader>o", ":update <CR>:source<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "<C-d>", "<C-d>zz")
vim.keymap.set("v", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

vim.keymap.set("n", "<leader>lv", ":vsplit<CR>")
vim.keymap.set("n", "<leader>lh", ":split<CR>")

-- navigation for f(char) and t(char)
vim.keymap.set("n", ";", ",")
vim.keymap.set("n", "'", ";")

vim.keymap.set("n", ",", ":b #<CR>") -- go to prev. file
vim.keymap.set("v", "<leader>yy", '"+y')

vim.keymap.set("n", "-", ":Oil<CR>")
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR> :UndotreeFocus<CR>")
