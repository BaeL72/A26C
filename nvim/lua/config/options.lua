local opt = vim.opt
local g = vim.g

vim.g.editorconfig = false

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

opt.signcolumn = "yes:1"
opt.wrap = false
opt.showmode = false
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.autoindent = true
opt.expandtab = true
opt.smartindent = true
opt.breakindent = true
opt.fixendofline = false

opt.lazyredraw = false
opt.redrawtime = 1500
opt.synmaxcol = 240
opt.modeline = false
opt.exrc = false
opt.splitbelow = true
