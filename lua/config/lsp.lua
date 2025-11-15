vim.lsp.enable('lua_ls')
vim.lsp.enable('html')
vim.lsp.enable('cssls')
vim.lsp.enable('pylyzer')
vim.lsp.enable('marksman')
vim.lsp.enable('bashls')
vim.lsp.enable('phpactor')
vim.lsp.enable('ts_ls')


vim.keymap.set('n', "<leader>gd", "<C-]>")

vim.diagnostic.config({
    virtual_lines = {
        current_line = true,
    },
})


