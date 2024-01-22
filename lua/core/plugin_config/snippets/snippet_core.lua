ls = require('luasnip')

ins = ls.insert_node
text = ls.text_node
snip = ls.snippet
f = ls.function_node
a_s = ls.add_snippets

function copy(args)
    return args[1]
end

function reg(_, snip)
    return snip.captures[1]
end
