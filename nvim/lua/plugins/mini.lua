return {
	{
		"nvim-mini/mini.surround",
		config = function()
			require("mini.surround").setup({
				mappings = {
					add = "\\a",
					delete = "\\d",
					find = "\\f",
					find_left = "\\F",
					highlight = "\\h",
					replace = "\\r",
					update_n_lines = "\\n",
				},
			})
		end,
	},
	{
		"nvim-mini/mini.move",
		config = function()
			require("mini.move").setup()
		end,
	},
}
