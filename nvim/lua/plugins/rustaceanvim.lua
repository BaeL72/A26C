return {
	"mrcjkb/rustaceanvim",
	ft = "rust",
	init = function()
		vim.g.rustaceanvim = {
			server = {
				settings = {
					["rust-analyzer"] = {
						check = {
							command = "clippy",
							enable = true,
							checkOnSave = false,
						},
						checkOnSave = {
							command = "clippy",
							enable = false,
						},
						diagnostics = {
							enable = true,
							experimental = {
								enable = true,
							},
						},
						inlayHints = {
							typeHints = { enable = true },
						},
					},
				},
			},
		}
	end,
}
