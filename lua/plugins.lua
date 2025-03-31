return {
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
    {
        "SmiteshP/nvim-navic",
        requires = "neovim/nvim-lspconfig"
    },
    {
        'nvim-treesitter/nvim-treesitter',
    },
    'dense-analysis/ale',
    'hrsh7th/nvim-cmp',
    '3rd/image.nvim',
    'L3MON4D3/LuaSnip',
    'rebelot/heirline.nvim',
    'hrsh7th/cmp-nvim-lsp',
    'frabjous/knap',
    'saadparwaiz1/cmp_luasnip',
    'lervag/vimtex',
    'windwp/nvim-autopairs',
    'norcalli/nvim-colorizer.lua',
    {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
    -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    },
    'glepnir/template.nvim',
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    "chentoast/marks.nvim",
}
