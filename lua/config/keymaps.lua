vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>Q', ':quitall<CR>')
vim.keymap.set('n', '<leader>o', ':update <CR>:source<CR>')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-l>', '<C-w>l')

vim.keymap.set('n', '<leader>lv', ':vsplit<CR>')
vim.keymap.set('n', '<leader>lh', ':split<CR>')

vim.keymap.set('n', ',', ':b #<CR>') -- go to prev. file

vim.keymap.set('v', '<leader>yy', '"+y')
vim.keymap.set('n', '-', ':Oil<CR>')

vim.keymap.set('n', '<leader>u', ':UndotreeToggle<CR> :UndotreeFocus<CR>')
