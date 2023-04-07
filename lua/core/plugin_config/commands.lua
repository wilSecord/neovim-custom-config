vim.api.nvim_create_user_command("R", function ()
    vim.cmd(":w")
    vim.cmd(":RustRun")
 end, {nargs = '?'})

vim.api.nvim_create_user_command("S", function ()
     vim.cmd(":w")
     vim.cmd(":source %")
end, {nargs = '?'})
