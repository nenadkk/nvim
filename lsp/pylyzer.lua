return{
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
}
