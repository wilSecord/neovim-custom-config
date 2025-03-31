vim.api.nvim_create_user_command("S", function ()
     vim.cmd(":w")
     vim.cmd(":source %")
end, {nargs = '?'})

vim.api.nvim_create_user_command("F", function ()
    vim.cmd("belowright split term://fish")
    vim.cmd("resize 10")
end, {})

vim.api.nvim_create_user_command("T", function ()
    vim.cmd(":tabnew")
    vim.cmd(":term /sbin/fish")
end, {})

