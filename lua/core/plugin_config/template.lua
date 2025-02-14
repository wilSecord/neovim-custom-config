tplt = require('template')

tplt.setup({
    temp_dir = '~/.config/nvim/templates/'
})
tplt.register('{{_path_}}', function() vim.fn.expand('%') end)
require('telescope').load_extension('find_template')

vim.api.nvim_create_autocmd("BufNewFile", {
    callback = function ()
        pattern = vim.bo.filetype
        vim.cmd([[:Template pattern]])
    end
})
