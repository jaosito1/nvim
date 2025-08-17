vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set('n', '<leader>w', ':write <CR>')
vim.keymap.set('n', '<leader>q', ':quit <CR>')
vim.keymap.set('n', '<leader>o', ':update <CR>:source <CR>')

vim.keymap.set('v', '<leader>yy', '"+y')
