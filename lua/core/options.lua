termguicolors = true

vim.cmd('set number')
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.cmd('colorscheme main_theme')
vim.cmd('autocmd BufNewFile *.tex 0r ~/.config/nvim/templates/tex.tex')
