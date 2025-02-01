-- set tab to 4 spaces when editing a python file
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*.py" },
  callback = function()
    vim.opt.shiftwidth = 4
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
  end
})
