local lazy_path = vim.fn.stdpath("config") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazy_path) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        "https://github.com/folke/lazy.nvim.git",
        lazy_path
    })
end

vim.opt.rtp:prepend(lazy_path)

require("lazy").setup({
    "nvim-tree/nvim-web-devicons",
    { "catppuccin/nvim", name = "catppuccin" },
    { "nvim-treesitter/nvim-treesitter", lazy = true },
    { "neovim/nvim-lspconfig",           lazy = true },
    { "williamboman/mason.nvim",         lazy = true },
    { "williamboman/mason-lspconfig",    lazy = true },
},{
    root = vim.fn.stdpath("config") .. "/lazy",
    lockfile = vim.fn.stdpath("config") .. "/lazy/lazy-lock.json",
    ui = {
        border = "rounded",
        width = 0.75,
        height = 0.75,
    }
})
