require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "jdtls", "jedi_language_server", "rust_analyzer", "ltex"}
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require("luasnip.loaders.from_vscode").lazy_load()
require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
require("lspconfig").jedi_language_server.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
require("lspconfig").jdtls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
require("lspconfig").ltex.setup {
  on_attach = on_attach,
  capabilities = capabilities
}
require("lspconfig").rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

