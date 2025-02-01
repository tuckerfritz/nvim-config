-- enable line number and relative line number
vim.opt.number = true
vim.opt.relativenumber = true

-- width of a tab
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

-- use number of spaces to insert a <Tab>
vim.opt.expandtab = true

-- configure key mappings
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ":write<CR>", { noremap = true, silent = true })

-- enable the system clipboard
vim.opt.clipboard = "unnamedplus"
