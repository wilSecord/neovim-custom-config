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
vim.g.maplocalleader = "\\"
vim.g.mapleader = " "

-- Setup lazy.nvim
require("lazy").setup({
    rocks = {
        hererocks = true,
    },
    spec = {
        {
            'nvim-treesitter/nvim-treesitter',
        },
		'jubnzv/mdeval.nvim',
        'dense-analysis/ale',
		'norcalli/nvim-colorizer.lua',
        'hrsh7th/nvim-cmp',
		{
			"folke/snacks.nvim",
			priority = 1000,
			lazy = false,
			---@type snacks.Config
			opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
	   	 	-- refer to the configuration section below
	   	 	bigfile = { enabled = true },
	   	 	dashboard = { enabled = true },
	   	 	explorer = { enabled = false },
	   	 	indent = { enabled = true },
	   	 	input = { enabled = true },
	   	 	picker = { enabled = true },
	   	 	notifier = { enabled = true },
	   	 	quickfile = { enabled = true },
	   	 	scope = { enabled = true },
	   	 	scroll = { enabled = true },
			statuscolumn = { enabled = true },
			words = { enabled = true },
			},
		},
		'loctvl842/monokai-pro.nvim',
        {
            '3rd/image.nvim',
            opts = {},
        },
		'L3MON4D3/LuaSnip',
		'hrsh7th/cmp-nvim-lsp',
		'saadparwaiz1/cmp_luasnip',
		'windwp/nvim-autopairs',
		{
		    'MeanderingProgrammer/render-markdown.nvim',
		    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' }, -- if you use the mini.nvim suite
		    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' }, -- if you use standalone mini plugins
		    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
		    ---@module 'render-markdown'
		    ---@type render.md.UserConfig
		    opts = {},
		},
		{
			"mason-org/mason.nvim",
			opts = {}
		},
        "neovim/nvim-lspconfig",
		{
		    "nvim-neo-tree/neo-tree.nvim",
		    branch = "v3.x",
		    dependencies = {
				"nvim-lua/plenary.nvim",
		        "MunifTanjim/nui.nvim",
		        "nvim-tree/nvim-web-devicons", -- optional, but recommended
		    },
		    lazy = false, -- neo-tree will lazily load itself
		}
        -- import your plugins
    },
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    -- automatically check for plugin updates
    checker = { enabled = true },
})
