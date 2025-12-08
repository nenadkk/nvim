vim.keymap.set('n', "<leader>gd", "<C-]>")

vim.diagnostic.config({
    virtual_text     = true,
    severity_sort    = true,
    signs            = {
        text = {
            [vim.diagnostic.severity.ERROR] = '✘',
            [vim.diagnostic.severity.WARN]  = '▲',
            [vim.diagnostic.severity.HINT]  = '⚑',
            [vim.diagnostic.severity.INFO]  = '»',
        },
    },
    update_in_insert = true,
    virtual_lines = {
        current_line = true,
    },
})




----------------------- LSP CONFIGURATIONS -----------------------


vim.lsp.enable('lua_ls')
vim.lsp.config('lua_ls',{
    cmd = {'lua-language-server'},
    filetypes = {'lua'},
    root_markers = { ".luarc.json", ".luarc.jsonc", ".luacheckrc",
                     ".stylua.toml", "stylua.toml", "selene.toml",
                     "selene.yml", ".git" },
    settings = {
        Lua = {
            runtime = {version = 'LuaJIT'},
            diagnostics = {globals = {'vim'},},

        }
    }
}
)



vim.lsp.enable('html')
vim.lsp.config('html',{
    cmd = { "vscode-html-language-server", "--stdio" },

    filetype = { "html", "templ" },

    init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
            css = true,
            javascript = true
        },
        provideFormatter = true
    },

    root_markers = { "package.json", ".git" },
    settings = {},
})




vim.lsp.enable('cssls')
vim.lsp.config('cssls',{
    cmd = { "vscode-css-language-server", "--stdio" },
    filetypes = { "css", "scss", "less" },
    init_options = {
        provideFormatter = true
    },
    root_markers = { "package.json", ".git" },
    settings = {
        css = { validate = true },
        less = { validate = true },
        scss = { validate = true }
    }
})




vim.lsp.enable('ts_ls')
vim.lsp.config('ts_ls',{
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "javascript", "javascriptreact", "javascript.jsx",
                    "typescript", "typescriptreact", "typescript.tsx", "js" },
    init_options = {
        hostInfo = "neovim"
    }
})




vim.lsp.enable('phpactor')
vim.lsp.config('phpactor',{
    cmd = { "phpactor", "language-server" },
    filetypes = { "php" },
    root_markers = { ".git", "composer.json", ".phpactor.json", ".phpactor.yml" },
    workspace_required = true,

})

vim.lsp.enable('clangd')
vim.lsp.config('clangd',{
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp", "cuda" } ,
    root_markers = { ".clangd", ".clang-tidy", ".clang-format",
                    "compile_commands.json", "compile_flags.txt",
                    "configure.ac", ".git" },
    capabilities = {
        offsetEncoding = { "utf-8", "utf-16" },
        textDocument = {
            completion = {
                editsNearCursor = true
            }
        }
    },

})


--[[

vim.lsp.enable('marksman')
vim.lsp.config('marksman',{
    cmd = { "marksman", "server" },
    filetypes = { "markdown", "markdown.mdx" },
    root_markers = { ".marksman.toml", ".git" },
})



vim.lsp.enable('pylyzer')
vim.lsp.config('pylyzer',{
    cmd = { "pylyzer", "--server" },
    cmd_env = {
        ERG_PATH = "/home/runner/.erg"
    },
    filetypes = { "python" },
    root_markers =  { ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml", ".git" },
    settings = {
        python = {
            checkOnType = false,
            diagnostics = true,
            inlayHints = true,
            smartCompletion = true
        }
    }
})




vim.lsp.enable('bashls')
vim.lsp.config('bashls',{
    cmd = { "bash-language-server", "start" },
    filetype ={ "bash", "sh" },
    root_markers = { ".git" },
    settings = {
        bashIde = {
            globPattern = "*@(.sh|.inc|.bash|.command)"
        }
    },
})


]]--













