local ls = require("luasnip")

-- luasnip keymaps
vim.keymap.set({ "i", "s" }, "<TAB>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })

local list_snips = function()
	local ft_list = require("luasnip").available()[vim.o.filetype]
	local ft_snips = {}
	for _, item in pairs(ft_list) do
		ft_snips[item.trigger] = item.name
	end
	print(vim.inspect(ft_snips))
end


vim.keymap.set({"i", "s"}, "<s-cr>", "<cmd>undo<cr>",{ silent = true })

vim.keymap.set({"i", "s"}, "<M-CR>", "<cmd>redo<cr>", { silent = true })

vim.keymap.set({"i", "s"}, "<C-s>", "<cmd>w<cr>")

vim.api.nvim_create_user_command("F", function ()
    vim.cmd("belowright split term://fish")
    vim.cmd("resize 10")
end, {})


vim.api.nvim_create_user_command("SnipList", list_snips, {})

