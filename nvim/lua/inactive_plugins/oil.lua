return {
	"malewicz1337/oil-git.nvim",
	dependencies = {
		"stevearc/oil.nvim",
	},
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			columns = {
				-- { "permissions", align = "center" },
				{ "mtime", align = "right" },
				"icon",
			},
			win_options = {
				wrap = false,
				signcolumn = "yes",
			},
			use_default_keymaps = true,
		})
		require("oil-git").setup({
			symbol_position = "signcolumn",
			can_use_signcolumn = function(bufnr)
				return "yes:1"
			end,
			symbols = {
				file = {
					added = " +",
					modified = " ~",
					renamed = " R",
					deleted = " -",
					copied = " C",
					conflict = " !",
					untracked = " ?",
					ignored = " O",
				},
				directory = {
					added = " *",
					modified = " M",
					renamed = " r",
					deleted = " -",
					copied = " c",
					conflict = " !",
					untracked = " ?",
					ignored = " o",
				},
			},
			highlights = {
				OilGitAdded = { fg = "#a6e3a1" },
				OilGitModifiedStaged = { fg = "#f9e2af" },
				OilGitModifiedUnstaged = { fg = "#e5c890" },
				OilGitRenamed = { fg = "#cba6f7" },
				OilGitDeleted = { fg = "#f38ba8" },
				OilGitCopied = { fg = "#cba6f7" },
				OilGitConflict = { fg = "#fab387" },
				OilGitUntracked = { fg = "#89b4fa" },
				OilGitIgnored = { fg = "#6c7086" },
			},
		})
	end,
}
