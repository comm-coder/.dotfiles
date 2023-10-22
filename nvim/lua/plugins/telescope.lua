require("telescope").setup({
    defaults = {
        layout_strategy = "horizontal",
        layout_config = {
            vertical = {
                width = 0.75,
                height = 0.75
            }
        }
    },
    pickers = {
        find_files = {
            hidden = true
        }
    }
})
