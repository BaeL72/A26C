return {
	"aliqyan-21/darkvoid.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("darkvoid").setup({
			transparent = false,
			glow = true,
			show_end_of_buffer = true,
			colors = {
				fg = "#c1c1c1",
				bg = "#000000",
				cursor = "#bdfe58",
				line_nr = "#404040",
				visual = "#303030",
				comment = "#505050",
				string = "#7799bb",
				func = "#888888",
				kw = "#ffff00",
				identifier = "#e5e4e2",
				type = "#7799bb",
				-- type_builtin = "#c5c5c5", -- current
				type_builtin = "#8cf8f7", -- glowy blue old (was present by default before type_builtin was introduced added here for people who may like it)
				search_highlight = "#1bfd9c",
				operator = "#1bfd9c",
				bracket = "#e6e6e6",
				preprocessor = "#4b8902",
				bool = "#66b2b2",
				constant = "#b2d8d8",
				plugins = {
					lualine = false,
				},
			},
		})
	end,

	init = function()
		vim.cmd("colorscheme darkvoid")
	end,
}
