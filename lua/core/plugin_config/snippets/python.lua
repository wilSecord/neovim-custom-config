require "core.plugin_config.snippets.snippet_core"

a_s("python", {
    snip("fn", {
        text("def "),
        ins(1, "main"),
        text("("),
        ins(2, "arg"),
        text({"):", "\t"}),
        ins(0, "..."),
    }),
    snip("pr", {
        text("print("),
        ins(0, "'Hello World!'"),
        text(")"),
    }),
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
    }),
    --  snip("c", {
        --      text("class "),
        --      ins(1, "NAME"),
        --      text({":", "def __init__("}),
        --      ins(2, "self"),
        --      text("):")
        --  })
})


