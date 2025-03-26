termguicolors = true

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.spelllang = 'en_us'
vim.opt.spell = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- vim.cmd('autocmd BufNewFile *.tex 0r ~/.config/nvim/templates/tex.tex')
-- vim.cmd('autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/shell.sh')
vim.cmd('autocmd BufWritePost * execute "! if [-d .git] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add % ; git commit -m %; fi > /dev/null 2>&1"')
