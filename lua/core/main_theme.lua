vim.cmd('hi clear')
vim.cmd('syntax reset')
vim.g.colors_name = "orng"
vim.cmd('set background=dark')

local function apply(name, scheme)
    vim.api.nvim_set_hl(0, name, scheme)
end

local colors = {
    bg      = "#000000",
    fg      = "#ff9000",
    dfg     = "#4d2b00",
    hl      = "#444444",
    purple  = "#8787ff",
    white   = "#ffffff",
    blue    = "#87d7ff",
    mgray   = "#aaaaaa",
    gray    = "#eaecef",
    green   = "#87ff91",
    dgreen  = "#1b331d",
    red     = "#ff5f62",
    yellow  = "#e9ff81",
    dyellow = "#2f331d",
    dgray   = "#666666",
    none    = "NONE"
}

local editor = {
    Normal = { fg = colors.fg, bg = colors.bg },
    Visual = { fg = colors.none, bg = colors.hl },
    Pmenu  = { fg = colors.red},
}

local syntax = {
    Comment = { fg = colors.mgray, italic = true },
    Constant = { fg = colors.blue, bold = true },
    String = { fg = colors.yellow },
    Character = { fg = colors.yellow },
    Number = { fg = colors.blue },
    Boolean = { fg = colors.red, bold = true },
    Float = { fg = colors.blue },
    Identifier = { fg = colors.fg },
    Statement = { fg = colors.red },
    Conditional = { fg = colors.blue },
    Repeat = { fg = colors.blue },
    Label = { fg = colors.blue },
    Operator = { fg = colors.blue },
    Keyword = { fg = colors.white, bold = true },
    Exception = { fg = colors.red, bold = true },
    Variable = { fg = colors.fg }
}

apply("Normal", editor.Normal)
apply("@string", syntax.String)
apply("@error", syntax.Exception)
-- apply("Cursor", editor.Visual)
apply("@comment", syntax.Comment)
-- apply("Exception", syntax.Exception)
apply("@type", syntax.Label)
apply("@boolean", syntax.Boolean)
apply("@keyword", syntax.Keyword)
apply("@keyword.conditional", { fg = colors.white })
apply("@keyword.import", { fg = colors.red })
-- apply("Identifier", syntax.Identifier)
-- apply("Constant", syntax.Constant)
-- apply("Keyword", syntax.Keyword)
-- apply("NormalFloat", editor.Normal)
-- apply("Pmenu", editor.Normal)
-- apply("PmenuSel", editor.Visual)
-- apply("Visual", editor.Visual)
-- apply("CursorLine", editor.Visual)
apply('@variable', editor.Normal)
apply('@variable.member', syntax.Number)
-- apply("StatusLine", { fg = colors.bg, bg = colors.fg, bold = true})
-- apply("StatusLineNC", editor.Normal)
