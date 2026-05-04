return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		lazy = false, -- neo-tree will lazily load itself
		config = function()
			require("neo-tree").setup({
				window = {
					position = "left",
					width = 60,
					popup = {
						size = {
							width = "50%",
							height = "50%",
						},
						position = "50%",
					},
				},
				filesystem = {
					hijack_netrw_behavior = "open_default",
					hide_dotfiles = false,
					renderers = {
						file = {
							{ "indent" },
							{ "icon" },
							{ "name", use_git_status_colors = true },
							{
								"container",
								content = {
									{ "git_status", zindex = 10, align = "right" },
									{ "last_modified", zindex = 10, align = "right", format = "%H:%M %d-%m-%Y" },
								},
							},
						},
					},
				},
				buffers = {
					hijack_netrw_behavior = "open_default",
					hide_dotfiles = false,
					renderers = {
						file = {
							{ "indent" },
							{ "icon" },
							{ "name", use_git_status_colors = true },
							{
								"container",
								content = {
									{ "git_status", zindex = 10, align = "right" },
									{ "last_modified", zindex = 10, align = "right", format = "%H:%M %d-%m-%Y" },
								},
							},
						},
					},
				},
				git_status = {
					hijack_netrw_behavior = "open_default",
					hide_dotfiles = false,
					renderers = {
						file = {
							{ "indent" },
							{ "icon" },
							{ "name", use_git_status_colors = true },
							{
								"container",
								content = {
									{ "git_status", zindex = 10, align = "right" },
									{ "last_modified", zindex = 10, align = "right", format = "%H:%M %d-%m-%Y" },
								},
							},
						},
					},
				},
				source_selector = {
					winbar = true,
					statusline = false,

					sources = {
						{
							source = "filesystem",
						},
						{
							source = "git_status",
						},
						{
							source = "buffers",
						},
					},
				},
				default_component_configs = {
					git_status = {
						symbols = {
							added = "+",
							deleted = "-",
							modified = "~",
							renamed = "R",
							untracked = "?",
							ignored = "!",
							unstaged = "M",
							staged = "*",
							conflict = "U",
						},
					},
					diagnostics = {
						symbols = {
							hint = "H",
							info = "I",
							warn = "W",
							error = "E",
						},
						highlights = {
							hint = "#1e90ff",
							info = "#32cd32",
							warn = "#eed202",
							error = "#ff0000",
						},
					},
				},
			})
		end,
	},
}
