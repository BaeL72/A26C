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
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.autoindent = true
opt.expandtab = false
opt.smartindent = true
opt.breakindent = true
opt.fixendofline = false

opt.lazyredraw = false
opt.redrawtime = 1500
opt.synmaxcol = 240
opt.modeline = false
opt.exrc = false
opt.splitbelow = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrwSettings = 1
vim.g.loaded_netrwHandlers = 1
vim.g.bugreport = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_gzip = 1
vim.g.loaded_matchparen = 1
vim.g.matchit = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_remote_plugins = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_man = 1
vim.g.loaded_sql_completion = 1
vim.g.laoded_spellfile_plugin = 1
vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1
