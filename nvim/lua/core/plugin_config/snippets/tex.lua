local ls = require('luasnip')

local ins = ls.insert_node
local text = ls.text_node
local snip = ls.snippet
local fn = ls.function_node

local function copy(args)
    return args[1]
end

ls.add_snippets("tex", {
  snip("qk", {
    text("$"), ins(0, ""), text("$"),
  }),
  snip("qm", {
      text({"\\[", "\t"}), ins(0, ""), text({"", "\\]"})
  }),
},{
    type = "autosnippets",
  }
)

ls.add_snippets("tex", {
    snip("beg", {
        text("\\begin{"), ins(1, ""), text({"}", "\t"}),
        ins(0, ""),
        text({"", "end{"}), fn(copy, 1), text("}")
    }),
    snip("docstart", {
        text("\\documentclass{"), ins(1, ""), text({"}", ""}),
        text({"\\begin{document}", "\t"}), ins(0, ""),
        text({"", "\\end{document}"})
    })
})
