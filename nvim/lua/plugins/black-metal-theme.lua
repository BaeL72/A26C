return {
	{
		"metalelf0/black-metal-theme-neovim",
		lazy = false,
		priority = 1000,
		config = function()
			require("black-metal").setup({
				theme = "emperor",
				variant = "dark",
				code_style = {
					comments = "none",
					conditionals = "italic",
					functinons = "italic",
					keywords = "none",
					headings = "bold",
					operators = "none",
					keyword_return = "italic",
					strings = "none",
					variables = "none",
				},
			})
			vim.cmd.colorscheme("emperor")
		end,
	},
}
