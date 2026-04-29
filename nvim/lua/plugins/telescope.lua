return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- optional but recommended
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},

	config = function()
		require("telescope").setup({
			defaults = {
				initial_mode = "normal",
				mappings = {
					n = {
						["q"] = require("telescope.actions").close,
					},
				},
			},
		})
	end,
}
