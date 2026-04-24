return {
	"nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = "main",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = { "c", "cpp", "rust", "python", "lua", "cmake" },
			sync_install = false,
			auto_install = false,
			highlight = {
				enable = true,
			},
			indent = {
				enable = true,
			},
			additional_vim_regex_highlighting = false,
		})
	end,
}
