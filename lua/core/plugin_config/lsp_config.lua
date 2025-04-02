local navic = require("nvim-navic")
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "clangd", "jdtls", "jedi_language_server", "rust_analyzer", "texlab", "cssls", "html", "r_language_server"}
})

local on_attach = function(client, buf)
    navic.attach(client,buf)
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
require("lspconfig").texlab.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").html.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").clangd.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
require("lspconfig").r_language_server.setup {
    on_attach = on_attach,
    capabilities = capabilities
}
