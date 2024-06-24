require "nvchad.mappings"
local map = vim.keymap.set

map('i', 'jk', '<Esc>')
map('n', '<Esc>', '<cmd>nohlsearch<CR>') --clears highlighting in the normal mode 
map('n', '<leader>E', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
map('n', '<leader>Q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
map('n', '<left>', '<nop>')
map('n', '<right>', '<nop>')
map('n', '<up>', '<nop>')
map('n', '<down>', '<nop>')
map('n', '<leader>yy', 'gg"+yG')
map('n', '<leader>dd', 'gg"+dG')

