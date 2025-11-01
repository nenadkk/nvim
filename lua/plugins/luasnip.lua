return{
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
                        "rafamadriz/friendly-snippets",
                        'hrsh7th/nvim-cmp',
                        'saadparwaiz1/cmp_luasnip',
                        'hrsh7th/cmp-nvim-lsp',
                    },
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp",
    }
}
