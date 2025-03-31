-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
	    vim.api.nvim_echo({
	      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
	      { out, "WarningMsg" },
	      { "\nPress any key to exit..." },
	    }, true, {})
	    vim.fn.getchar()
	    os.exit(1)
	  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        {
            "nvim-neorg/neorg",
            lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
            version = "*", -- Pin Neorg to the latest stable release
            config = true,
        },
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
        -- import your plugins
    },
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    install = { colorscheme = { "habamax" } },
    -- automatically check for plugin updates
    checker = { enabled = true },
})
