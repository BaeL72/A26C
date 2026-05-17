vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "python", "c", "cpp", "rust", "sh" },
	callback = function()
		vim.treesitter.start()
	end,
})
