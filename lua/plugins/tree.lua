local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))

    -- removed mappings
    vim.keymap.del('n', 'q', { buffer = bufnr })
    vim.keymap.del('n', 'm', { buffer = bufnr })
    vim.keymap.del('n', '<Tab>', { buffer = bufnr })
    vim.keymap.del('n', '<', { buffer = bufnr })
    vim.keymap.del('n', '>', { buffer = bufnr })
    vim.keymap.del('n', 'B', { buffer = bufnr })
    vim.keymap.del('n', 'C', { buffer = bufnr })
    vim.keymap.del('n', 'D', { buffer = bufnr })
    vim.keymap.del('n', 'F', { buffer = bufnr })
    vim.keymap.del('n', 'H', { buffer = bufnr })
    vim.keymap.del('n', 'I', { buffer = bufnr })
    vim.keymap.del('n', 'J', { buffer = bufnr })
    vim.keymap.del('n', 'K', { buffer = bufnr })
    vim.keymap.del('n', 'L', { buffer = bufnr })
    vim.keymap.del('n', 'M', { buffer = bufnr })
    vim.keymap.del('n', 'O', { buffer = bufnr })
    vim.keymap.del('n', 'P', { buffer = bufnr })
    vim.keymap.del('n', 'U', { buffer = bufnr })
    vim.keymap.del('n', 'W', { buffer = bufnr })
    vim.keymap.del('n', 'bd', { buffer = bufnr })
    vim.keymap.del('n', 'bmv', { buffer = bufnr })
    vim.keymap.del('n', 'bt', { buffer = bufnr })
    vim.keymap.del('n', 'e', { buffer = bufnr })
    vim.keymap.del('n', 'f', { buffer = bufnr })
    vim.keymap.del('n', 'g?', { buffer = bufnr })

end

return{
    {
        'nvim-tree/nvim-tree.lua',
            config = function()
                require("nvim-tree").setup({
                        sort = { sorter = "case_sensitive",},
                        view = { width = 30, side="left"},
                        renderer = { group_empty = false,},
                        filters = {dotfiles = true, },
                        on_attach = my_on_attach,
                        })
            end
    }
}
