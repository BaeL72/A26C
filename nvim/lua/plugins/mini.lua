return {
	{
		"nvim-mini/mini.surround",
		config = function()
			require("mini.surround").setup({
				mappings = {
					add = "<space>sa",
					delete = "<space>sd",
					find = "<space>sf",
					find_left = "<space>sF",
					highlight = "<space>sh",
					replace = "<space>sr",
					update_n_lines = "<space>sn",
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
