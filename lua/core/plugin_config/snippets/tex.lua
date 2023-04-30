local ls = require('luasnip')

local ins = ls.insert_node
local text = ls.text_node
local snip = ls.snippet

ls.add_snippets("tex", {
  snip("mk", {
    text("$"), ins(0, ""), text("$"),
  }),
},{
    type = "autosnippets",
  }
)
