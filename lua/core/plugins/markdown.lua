local rmd = require('render-markdown')

rmd.setup({
	callout = {
		question = { raw = '[!QA]', rendered = '?', highlight = 'RenderMarkdownWarn', category = 'custom' },
		answer = { raw = '[!ANS]', rendered = '!', highlight = 'RenderMarkdownSuccess', category = 'custom' },
		definition = { raw = '[!DEF]', rendered = '🕮', highlight = 'RenderMarkdownInfo', category = 'custom' }
	},
	checkbox = {
		checked = { scope_highlight = '@markup.strikethrough' }
	},
	bullet = {
		left_pad = 0,
		right_pad = 0,
	},
    latex = {
        enabled = true,
        render_modes = false,
        converter = 'latex2text',
        highlight = 'RenderMarkdownMath',
        position = 'above',
        top_pad = 0,
        bottom_pad = 0,
        virtual = true,
    },
})
