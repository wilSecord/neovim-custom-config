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

--vim.keymap.set({"i", "s"}, "<s-RIGHT>", "<cmd>bn<cr>", {silent = true})
--vim.keymap.set({"i", "s"}, "<s-left>", "<cmd>bn<cr>", {silent = true})

vim.keymap.set({"i", "s"}, "<s-cr>", "<cmd>undo<cr>",{ silent = true })

vim.keymap.set({"i", "s"}, "<a-CR>", "<cmd>redo<cr>", { silent = true })

vim.keymap.set({"i", "s"}, "<C-s>", "<cmd>w<cr>")


vim.api.nvim_create_user_command("SnipList", list_snips, {})

vim.keymap.set({"n"}, "<a-]>", "<cmd>tabnext<cr>", { silent = true })
vim.keymap.set({"n"}, "<a-[>", "<cmd>tabprevious<cr>", { silent = true })
vim.keymap.set({"n"}, "<c-w>", "<cmd>tabclose<cr>", { silent = true })
vim.keymap.set({"n"}, "<c-t>", "<cmd>tabnew<cr>", { silent = true })

vim.keymap.set({"n"}, "<s-f>", "<cmd>T<cr>")

vim.keymap.set({"n"}, "<C-e>",
    function()
        local result = vim.treesitter.get_captures_at_cursor(0)
        print(vim.inspect(result))
    end,
    { noremap = true, silent = false }
)
