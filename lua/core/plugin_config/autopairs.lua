local npairs = require('nvim-autopairs')
local Rule = require('nvim-autopairs.rule')
local cond = require('nvim-autopairs.conds')

npairs.setup()

npairs.add_rules({
    Rule("$", "$", "tex")
    :with_pair(cond.not_before_regex("\\"))
})
