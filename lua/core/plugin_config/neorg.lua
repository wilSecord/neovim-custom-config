require('neorg').setup({
    load = {
        ["core.defaults"] = {},
        ["core.integrations.treesitter"] = {},
        ["core.integrations.image"] = {},
        ["core.highlights"] = {},
        ["core.autocommands"] = {},
        ["core.neorgcmd"] = {},
        ["core.concealer"] = {
            icon_preset = "diamond",
        },
        ["core.integrations.nvim-cmp"] = {},
        ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
            },
        },
        ["core.dirman"] = {
            config = {
                workspaces = {
                    notes = "~/Documents/Notes",
                    game = "~/Documents/game"
                },
                index = "Index.norg"
            }
        },
    }
})
