local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local sn = ls.snippet_node

ls.add_snippets("html", {
	s("<", {
		i(0),
		t({"></"}),
		d(1, function (args)
			return sn(nil, {
				t(args[1])
			})
		end, {0})
	})
})
