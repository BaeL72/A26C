return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- Bubbles config for lualine
	-- Author: lokesh-krishna
	-- MIT license, see LICENSE for more details.
	config = function()

-- stylua: ignore

  local colors = {
  blue   = '#1e90ff',
  cyan   = '#79dac8',
  black  = '#161415',
  white  = '#c6c6c6',
  red    = '#dd2233',
  violet = '#9400d3',
  gray   = '#161415',
  green  = '#50fa7b',
  orange = '#ff9d00',
  terminal_black = '#020403',
}

		local bubbles_theme = {
			normal = {
				a = { fg = colors.black, bg = colors.blue, gui = "bold" },
				b = { fg = colors.white, bg = colors.black },
				c = { fg = colors.white, bg = colors.blue },
			},

			insert = { a = { fg = colors.black, bg = colors.green, gui = "bold" }, c = { bg = colors.green } },
			visual = { a = { fg = colors.black, bg = colors.violet, gui = "bold" }, c = { bg = colors.violet } },
			replace = { a = { fg = colors.black, bg = colors.red, gui = "bold" }, c = { bg = colors.red } },
			command = { a = { fg = colors.black, bg = colors.orange, gui = "bold" }, c = { bg = colors.orange } },
			terminal = {
				a = { fg = colors.white, bg = colors.terminal_black, gui = "bold" },
				c = { bg = colors.terminal_black },
			},

			inactive = {
				a = { fg = colors.white, bg = "#000000", gui = "bold" },
				b = { fg = colors.white, bg = "#000000" },
				c = { fg = colors.white, bg = "#13161e" },
			},
		}

		require("lualine").setup({
			options = {
				theme = bubbles_theme,
				component_separators = "",
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
				lualine_b = { "filename", "branch", "diff" },
				lualine_c = {},
				lualine_x = {
					{
						"hostname",
						color = { fg = colors.white, bg = colors.black },
						separator = { left = "" },
					},
				},
				lualine_y = { "diagnostics", "filetype" },
				lualine_z = {
					{ "location", color = { gui = "bold" }, separator = { right = "" }, left_padding = 2 },
				},
			},
			inactive_sections = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = { "location" },
			},
			tabline = {},
			extensions = {
				"lazy",
				"mason",
				"nvim-dap-ui",
			},
		})
	end,
}
