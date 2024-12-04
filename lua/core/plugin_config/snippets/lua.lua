require "core.plugin_config.snippets.snippet_core"

a_s("lua", {
    snip("ap", {
        text("apply(\""),
        ins(1, ""),
        text("\", "),
        ins(0, ""),
        text(")")
    })
})
