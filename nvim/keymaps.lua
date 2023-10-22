local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>e", telescope.find_files)
vim.keymap.set("n", "<leader>b", telescope.buffers)
vim.keymap.set("n", "<leader>m", telescope.man_pages)
vim.keymap.set("n", "<leader>a", telescope.treesitter)
vim.keymap.set("n", "<leader>gf", telescope.git_files)
vim.keymap.set("n", "<leader>gc", telescope.git_commits)
vim.keymap.set("n", "<leader>gb", telescope.git_branches)
vim.keymap.set("n", "<leader>gs", telescope.git_status)

vim.keymap.set("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")
vim.keymap.set("n", "<leader><Tab>", "==")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>h", "<C-w>h")
vim.keymap.set("n", "<leader>j", "<C-w>j")
vim.keymap.set("n", "<leader>k", "<C-w>k")
vim.keymap.set("n", "<leader>l", "<C-w>l")

vim.keymap.set("n", "<leader>s", ":split<CR>")
vim.keymap.set("n", "<leader>S", ":vsplit<CR>")

vim.keymap.set("n", "<leader>t", ":split<CR>:terminal<CR>")
vim.keymap.set("n", "<leader>T", ":vsplit<CR>:terminal<CR>")

vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("n", "<leader>n", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>N", vim.diagnostic.goto_prev)

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(_)
        vim.keymap.set("n", "<leader>l", telescope.lsp_references)
        vim.keymap.set("n", "<leader>p", telescope.diagnostics)
        vim.keymap.set("n", "<leader>i", telescope.lsp_implementations)
        vim.keymap.set("n", "<leader>d", telescope.lsp_definitions)
        vim.keymap.set("n", "<leader>D", telescope.lsp_type_definitions)
    end
})
