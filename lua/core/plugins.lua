local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  }
 use {
   'nvim-treesitter/nvim-treesitter',
 }
  use 'dense-analysis/ale'
  use 'hrsh7th/nvim-cmp'
  use '3rd/image.nvim'
  use 'nvim-orgmode/orgmode'
  use 'L3MON4D3/LuaSnip'
  use 'rebelot/heirline.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'frabjous/knap'
  use 'saadparwaiz1/cmp_luasnip'
  use 'lervag/vimtex'
  use 'windwp/nvim-autopairs'
  use 'norcalli/nvim-colorizer.lua'
  use {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
-- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
}
  use 'glepnir/template.nvim'
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}
  use "chentoast/marks.nvim"
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
