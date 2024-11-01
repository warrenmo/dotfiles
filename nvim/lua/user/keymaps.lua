vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Pane navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Shortcuts
vim.keymap.set({'n', 'x', 'o'}, '<leader>h', '^') -- go to 1st non-empty character in line
vim.keymap.set({'n', 'x', 'o'}, '<leader>l', 'g_') -- go to last non-empty character in line
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>') -- select all text

-- Basic clipboard interaction
vim.keymap.set({'n', 'x'}, 'gy', '"+y') -- copy
vim.keymap.set({'n', 'x'}, 'gp', '"+p') -- paste

-- Delete text
vim.keymap.set({'n', 'x'}, 'x', '"_x')
vim.keymap.set({'n', 'x'}, 'X', '"_d')

-- Commands
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>') -- save current file
vim.keymap.set('n', '<leader>bq', '<cmd>bdelete<cr>') -- close current buffer
vim.keymap.set('n', '<leader>bl', '<cmd>buffer #<cr>') -- go to last active buffer
