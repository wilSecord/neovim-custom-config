local ls = require("luasnip")

-- luasnip keymaps
vim.keymap.set({ "i", "s" }, "<TAB>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  end
end, { silent = true })
