local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local sn = ls.snippet_node

ls.add_snippets("tex", {
	s("bg", {
		t("\\begin{"),
		c(1, {
			t("enumerate"),
			t("itemize"),
			i(1)
		}),
		t({"}", "\t"}),
		i(0),
		t({"", ""}),
		t("\\end{"),
		d(2, function (args)
			return sn(nil, {
				t(args[1])
			})
		end, {1}),
		t("}")
	}),
	s("itm", {
		t("\\item "),
		i(0),
		t(" \\\\")
	}),
	s("bf", {
		t("\\textbf{"),
		i(0),
		t("}")
	})
}, {
	type = "autosnippets",
})
