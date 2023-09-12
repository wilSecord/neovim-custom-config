local ls = require('luasnip')

local ins = ls.insert_node
local text = ls.text_node
local snip = ls.snippet

ls.add_snippets("rust", {
    snip("DEF", {
        text("fn "),
        ins(1, "main"),
        text("("),
        ins(2, ""),
        text({") {", "\t"}),
        ins(0, "unimplemented!();"),
        text({"", "}"})
    })
},{
    type = "autosnippets"
})
