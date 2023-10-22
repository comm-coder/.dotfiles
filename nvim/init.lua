vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undo"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 10
vim.opt.wrap = false

vim.g.mapleader = " "

require("plugins")
require("plugins.mason")
require("keymaps")

vim.cmd("colorscheme catppuccin")

vim.api.nvim_set_hl(0, "Normal",      { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC",    { bg = "none" })
