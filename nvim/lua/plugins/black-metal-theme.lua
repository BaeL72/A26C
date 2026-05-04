return {
	"metalelf0/black-metal-theme-neovim",
	lazy = false,
	priority = 1000,
	config = function()
		require("black-metal").setup({
			theme = "emperor",
			variant = "dark",
			alt_bg = false,

			code_style = {
				comments = "none",
				conditionals = "italic",
				functions = "italic",
				headings = "none",
				operators = "none",
				keyword_return = "italic",
				keywords = "italic",
				strings = "none",
				variables = "none",
			},

			colors = {
				string = "#5bb450",
				type = "#7799bb",
				number = "#f9e2af",
				func = "#c200fb",
				comment = "#585b70",
				visual = "#320b35",
				bg = "#08090f",
				property = "#ff8c36",
				alt = "#89b4fa",
				fg = "#c1c1c1",
				keyword = "#c30f45",
				operator = "#fab387",
				line = "#13161e",
				--	constant = "#aaaaaa",
			},

			diagnostics = {
				darker = true,
				undercurl = true,
				background = true,
			},
		})

		-- *emperor, bathory, burzum, *dark-funeral, *darkthrone,
		-- gorgoroth, *immortal, impaled-nazarene, khold, marduk, mayhem,
		-- nile, taake, thyrfing, *venom, windir

		require("black-metal").load()

		vim.api.nvim_set_hl(0, "Search", { bg = "#303030", fg = "#1bfd9c" })
		vim.api.nvim_set_hl(0, "IncSearch", { bg = "#303030", fg = "#1bfd9c" })
		vim.api.nvim_set_hl(0, "CurSearch", { bg = "#303030", fg = "#fbde37" })

		vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = "#060d0c" })
		vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { bg = "#1c1c1c", fg = "#edebdd" })
	end,
}
