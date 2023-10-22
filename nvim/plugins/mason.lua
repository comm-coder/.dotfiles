require("mason").setup({
    install_root_dir = vim.fn.stdpath("config") .. "/mason",
    ui = {
        border = "rounded",
        width = 0.75,
        height = 0.75,
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = "",
        },
        keymaps = {
            toggle_package_expand = "i",
            install_package = "<CR>",
            update_package = "u",
            update_all_packages = "U",
            check_package_version = "v",
            chech_outdated_packages = "c",
            uninstall_package = "<BS>",
            cancel_installation = "<C-c>",
            apply_language_filter = "f",
            toggle_package_install_log = "<CR>",
            toggle_help = "h"
        }
    }
})

require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls" }
})

require("mason-lspconfig").setup_handlers({
    function(server)
        require("lspconfig")[server].setup({})
    end
})

require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua" },
    auto_install = false,
    highlight = { enable = true, additional_vim_regex = true }
})
