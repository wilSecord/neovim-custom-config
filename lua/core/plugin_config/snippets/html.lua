require "core.plugin_config.snippets.snippet_core"


a_s("html", {
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

