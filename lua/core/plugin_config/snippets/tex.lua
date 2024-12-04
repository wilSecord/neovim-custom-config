require "core.plugin_config.snippets.snippet_core"

a_s("tex", {
  snip("mk", {
      text("$ "), ins(1), text(" $"), ins(0)
  }),
  snip("dm", {
      text({"\\[", "\t"}), ins(0, ""), text({"", "\\]"})
  }),
  snip("ls", {
      text({"\\begin{enumerate}", "\t"}),
      ins(0),
      text({"", "\\end{enumerate}"})
  }),
  snip("im", {
      text("\\item"),
      ins(0)
  }),
  snip({
      trig = "(.+)^",
      regTrig = true
  }, {
      f(function(_, snip)
          return snip.captures[1]
      end),
      text("^{"),
      ins(1),
      text("}"),
      ins(2)
  }),
  snip({
      trig = "(.+)_",
      regTrig = true
  }, {
      f(function(_, snip)
          return snip.captures[1]
      end),
      text("_{"),
      ins(1),
      text("}"),
      ins(2)
  }),
  snip("fsa", {
      text({"\\begin{tikzpicture}", "\\begin{scope}[every node/.style={circle, thick, draw, minimum width = 0.75cm}]", "\t"}),
      ins(1),
      text({"", "\\end{scope}", "", "\\begin{scope}[>={latex[black]},", "\tevery node/.style={fill=white, rectangle, inner sep=0.15pt},","\tevery edge/.style={draw=black, very thick}]", "\t"}),
      ins(2),
      text({"","\\end{scope}", "\\end{tikzpicture}"})
  }),
  snip({
      trig = "nd(.)",
      regTrig = true,
  },
      fmt([[
          \node ({}) at ({},{}) {{}};
      ]], {
          f(function(_, snip)
              return snip.captures[1]
          end),
          ins(1),
          ins(2)
      })
  ),
  snip({
      trig = "dnd(.)",
      regTrig = true,
  },
      fmt([[
          \node [double] ({}) at ({},{}) {{}};
      ]], {
          f(function(_, snip)
              return snip.captures[1]
          end),
          ins(1),
          ins(2)
      })
  ),
  snip({
      trig = "*"
  },
      text("\\cdot")
  ),
  snip({
      trig = "pt(.+)-(.+)",
      regTrig = true,
  },
      fmt([[
          \path [->] ({}) edge [{}] node [{}] {{${}$}} ({});
      ]], {
          f(function(_, snip)
              return snip.captures[1]
          end),
          f(function(_, snip)
              if snip.captures[1] == snip.captures[2] then
                return "loop above"
              end
          end),
          f(function(_, snip)
              if snip.captures[1] == snip.captures[2] then
                return "fill=none"
              end
          end),
          ins(1),
          f(function(_, snip)
              return snip.captures[2]
          end),
      })
  ),
  snip("frac", fmt([[
      \frac{{{}}}{{{}}}{}
  ]], {
      ins(1), ins(2), ins(0)
  })),
  snip("pd", fmt([[
      {}, {} \ra {}
  ]], {
      ins(1),
      ins(2),
      ins(3),
  })),
  snip("mx", fmt([[
      \begin{{bmatrix}} {}\\{}\\{} \end{{bmatrix}}{}
  ]], {
      ins(1),
      ins(2),
      ins(3),
      ins(0)
  })),
  snip({
      trig = "px",
      regTrig = true,
  },
      fmt([[
          \cdot P({}|{}){}
      ]], {
          ins(1),
          ins(2),
          ins(3),
      })
  ),
  snip({
      trig = "(.+)chs(.+),",
      regTrig = true,
  },
      fmt([[
          \binom{{{}}}{{{}}}
      ]], {
          f(function(_, snip)
              return snip.captures[1]
          end),
          f(function(_, snip)
              return snip.captures[2]
          end),
      })
  ),
  --snip({
  --    trig = "x(.+),",
  --    regTrig = true,
  --},
  --    fmt([[
  --        X_{{{}}}{}
  --    ]], {
  --        f(function (_, snip)
  --            return snip.captures[1]
  --        end),
  --        ins(1)
  --    })
  --)
},{
    type = "autosnippets",
  }
)
