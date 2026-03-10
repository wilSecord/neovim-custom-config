local cmp = require("cmp")
local mason = require("mason")
local luasnip = require("luasnip")

local servers = {
    "rust-analyzer",
    "jdtls"
}
mason.setup()
cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end
    },
	window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-o>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping {
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        },
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = {
        { name = "luasnip" },
    	{ name = "buffer" },
    	{ name = "nvim-lsp:jdtls" },
    	{ name = "path" },
		{ name = "render-markdown" }
    },
    experimental = {
        ghost_text = true,
    }
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(_,bufnr)
    return vim.lsp.get_clients { bufnr = bufnr }
end

for _, lsp in ipairs(servers) do
	vim.lsp.config(lsp, {
	    on_attach = on_attach,
	    capabilities = capabilities,
	})
	vim.lsp.enable(lsp)
end

