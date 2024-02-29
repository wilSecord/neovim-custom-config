require "core.plugin_config.snippets.snippet_core"

local date = function() return {os.date('%a-%Y-%m-%d')} end

a_s("md", {
    snip("mk", {
        text("$"),
        ins(0),
        text("$")
    }),
    snip("&d", {
        f(date, {})
    }),
    snip({
        trig = "&(%u)",
        regTrig = true
    },
        f(function(_, snip)
            return "\\mathbb{" .. snip.captures[1] .. "}"
        end, {})
    ),
    snip({
        trig = "(.)^",
        regTrig = true
    }, {
        text("^{"),
        ins(0),
        text("}")
    }),
    snip({
        trig = "(.)_",
        regTrig = true
    }, {
        text("_{"),
        ins(0),
        text("}")
    })
},{
    type = "autosnippets",
})
