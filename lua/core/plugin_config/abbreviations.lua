function load()
    local content = io.lines("/home/wil/.config/nvim/lua/core/plugin_config/abbrs.txt")
    for line in content do
        local lhs, rhs = line:match("%s*(.+)|%s*(.+)")
        if rhs ~= nil then
            vim.cmd("inoreabbrev "..lhs.." "..rhs)
            print("Loaded abbreviations")
        end
    end
end

function unload()
    local content = io.lines("/home/wil/.config/nvim/lua/core/plugin_config/abbrs.txt")
    for line in content do
        local lhs, _ = line:match("%s*(.+)|%s*(.+)")
        vim.cmd("iunabbrev "..lhs)
        print("Unloaded abbreviations")
    end
end

vim.keymap.set({"n"}, "<C-S-/>", load)
vim.keymap.set({"n"}, "<C-/>", unload)
vim.keymap.set("ia", "n", "nvim")
