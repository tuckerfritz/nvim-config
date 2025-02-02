-- configure key mappings
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ":write<CR>", { silent = true })

-- Window navigation keymaps
vim.keymap.set('n', '<C-h>', '<Cmd>wincmd h<CR>', { desc = 'Move to the left window' })
vim.keymap.set('n', '<C-l>', '<Cmd>wincmd l<CR>', { desc = 'Move to the right window' })
vim.keymap.set('n', '<C-j>', '<Cmd>wincmd j<CR>', { desc = 'Move to the window below' })
vim.keymap.set('n', '<C-k>', '<Cmd>wincmd k<CR>', { desc = 'Move to the window above' })
