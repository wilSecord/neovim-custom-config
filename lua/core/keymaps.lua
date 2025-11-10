vim.keymap.set(
	{'n'},
	"<C-f>",
	"<cmd>Neotree float<CR>"
)

vim.keymap.set(
	{'n'},
	"<leader>c",
	"<cmd>lua require('mdeval').eval_code_block()<CR>",
	{ silent = true, noremap = true }
)

vim.keymap.set(
	{'n'},
	"<leader><leader>",
	"<cmd>s/\\[ \\]/[x]<CR>",
	{ silent = true }
)
