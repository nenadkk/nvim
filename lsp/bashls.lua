return{
    cmd = { "bash-language-server", "start" },
    filetype ={ "bash", "sh" },
    root_markers = { ".git" },
    settings = {
        bashIde = {
            globPattern = "*@(.sh|.inc|.bash|.command)"
        }
    },
}
