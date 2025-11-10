vim.api.nvim_create_autocmd("FileType", {
	pattern="markdown",
	callback=function ()
		vim.opt_local.formatoptions:append("r")
		vim.opt_local.formatoptions:append("o")
		vim.opt_local.comments = {
			"b:- [ ]",
			"b:- [x]",
			"b:-",
			"b:*",
			"b:+",
			"b:>",
		}
	end
})
