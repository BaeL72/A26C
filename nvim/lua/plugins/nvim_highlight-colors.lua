return {
	"brenoprata10/nvim-highlight-colors",
  event = "BufReadPost",
	ft = { "toml", "css", "conf", "config", "qml", "ini" },
	config = function()
		require("nvim-highlight-colors").setup({
			render = "background",
			enable_named_colors = true,
			enable_tailwind = true,
		})
	end,
}
