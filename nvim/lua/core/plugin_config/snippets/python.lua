local ls = require('luasnip')

local ins = ls.insert_node
local text = ls.text_node
local snip = ls.snippet

ls.add_snippets("python", {
  snip("fn", {
    text("def "),
    ins(1, "main"),
    text("("),
    ins(2, "argstestasdfasdfasdfst"),
    text({"):", "\t"}),
    ins(0, "..."),
  }),
})

ls.add_snippets("python", {
  snip("pr", {
    text("print("),
    ins(0, "'Hello World!'"),
    text(")"),
  }),
})

ls.add_snippets("python", {
  snip("pygame", {
     text({"import pygame", "", ""}),
     text({"pygame.init()", ""}),
     text("WIDTH, HEIGHT = "),
     ins(1, "500"),
     text(", "),
     ins(2, "500"),
     text({"", "SCREEN = pygame.display.set_mode((WIDTH, HEIGHT))"}),
     text({"", "", ""}),
     text({"def main():", "\t"}),
     ins(3, "..."),
     text({"", "", ""}),
     text({'if __name__ == "__main__":', "\twhile 1:", "\t\tmain()"}),
  })
})
