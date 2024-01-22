require "core.plugin_config.snippets.snippet_core"

a_s("rust", {
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
