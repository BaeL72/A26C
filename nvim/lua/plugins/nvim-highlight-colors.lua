return {
	"brenoprata10/nvim-highlight-colors",
	ft = { "toml", "css", "conf", "config", "qml", "ini", "html", "lua", "json", "jsonc" },
	config = function()
		require("nvim-highlight-colors").setup({
			render = "background",
			enable_named_colors = true,
			enable_tailwind = true,
		})
	end,
}
