vim.api.nvim_create_autocmd("QuitPre", {
    vim.cmd([[! if [-d .git ] || git rev-parse --git-dir > /dev/null 2>&1 ; then git add -A ; git commit ; fi > /dev/null 2>&1 ]])
})
vim.api.nvim_create_autocmd("BufNewFile", {
    callback = function ()
        pattern = vim.bo.filetype
        vim.cmd([[:Template pattern]])
    end
})
