vim.keymap.set("n", "<leader>e", ":Ex<CR>")
vim.keymap.set("n", "<leader>p", ":Lazy<CR>")
vim.keymap.set("n", "<leader>m", ":Mason<CR>")

vim.keymap.set("n", "<leader>gs", ":!git status<CR>")
vim.keymap.set("n", "<leader>gf", ":!git ls-files<CR>")
vim.keymap.set("n", "<leader>gb", ":!git branch<CR>")

vim.keymap.set("n", "<leader>r", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

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
    callback = function(args)
        local opt = { buffer = args.buf }

        vim.keymap.set("n", "<leader>d", vim.lsp.buf.declaration, opt)
        vim.keymap.set("n", "<leader>D", vim.lsp.buf.definition, opt)
        vim.keymap.set("n", "<leader>i", vim.lsp.buf.implementation, opt)
        vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, opt)
        vim.keymap.set("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end, opt)
    end
})
