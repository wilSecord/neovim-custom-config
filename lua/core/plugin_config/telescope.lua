local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files<cr>", {})
vim.keymap.set('n', '<leader>fg', "<cmd>Telescope live_grep<cr>", {})
