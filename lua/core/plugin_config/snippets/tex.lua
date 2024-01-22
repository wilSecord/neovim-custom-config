require "core.plugin_config.snippets.snippet_core"

a_s("tex", {
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

a_s("tex", {
    snip("beg", {
        text("\\begin{"), ins(1, ""), text({"}", "\t"}),
        ins(0, ""),
        text({"", "end{"}), f(copy, 1), text("}")
    }),
    snip("docstart", {
        text("\\documentclass{"), ins(1, ""), text({"}", ""}),
        text({"\\begin{document}", "\t"}), ins(0, ""),
        text({"", "\\end{document}"})
    })
})
