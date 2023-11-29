local ls = require('luasnip')

local ins = ls.insert_node
local text = ls.text_node
local snip = ls.snippet
local f = ls.function_node

local function copy(args)
    return args[1]
end


ls.add_snippets("html", {
  snip("b", {
    text("<"),
    ins(1),
    text({">", "\t"}),
    ins(0),
    text({"", "</"}),
    f(copy, 1),
    text(">")
  }),
  snip("~", {
      text({"<!--", "\t"}),
      ins(0),
      text({"", "-->"})
  })
})

