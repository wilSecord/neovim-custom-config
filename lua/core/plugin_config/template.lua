tplt = require('template')

tplt.setup({
    temp_dir = '~/.config/nvim/templates/'
})
tplt.register('{{_path_}}', function() vim.fn.expand('%') end)
require('telescope').load_extension('find_template')

