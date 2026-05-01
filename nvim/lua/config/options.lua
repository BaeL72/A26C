local opt = vim.opt
local g = vim.g

opt.termguicolors = true
opt.clipboard = "unnamedplus"
opt.number = true
opt.swapfile = false
opt.backup = false

local undodir = vim.fn.expand("~/.config/nvim/undodir")
opt.undodir = undodir
opt.undofile = true
opt.undolevels = 20000
opt.undoreload = 20000

opt.updatetime = 250
opt.timeoutlen = 300
opt.hidden = true
opt.relativenumber = false

opt.cursorline = true

-- vim.api.nvim_set_hl(0, "CursorLine", {
-- 	bg = "#1b1b1b",
-- })
--
-- vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", {
-- 	bg = "#080808",
-- })

opt.signcolumn = "auto"
opt.wrap = false
opt.showmode = false
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true

opt.lazyredraw = false
opt.redrawtime = 1500

opt.synmaxcol = 240
opt.modeline = false
opt.exrc = false
opt.splitbelow = true

local disabled_built_ins = {
	"2html_plugin",
	"getscript",
	"getscriptPlugin",
	"gzip",
	"logipat",
	"netrw",
	"netrwPlugin",
	"netrwSettings",
	"netrwFileHandlers",
	"matchit",
	"tar",
	"tarPlugin",
	"rrhelper",
	"spellfile_plugin",
	"vimball",
	"vimballPlugin",
	"zip",
	"zipPlugin",
	"tutor",
	"rplugin",
	"syntax",
	"synmenu",
	"optwin",
	"compiler",
	"bugreport",
	"ftplugin",
}
