--E' necessario che il mapleader sia caricato prima di config.lazy
vim.g.mapleader = " "

require("config.settings")
require("config.lazy")
require("config.lsp")
require("config.snippets")

-- Imposto le keymaps dopo aver caricato tutti i plugin perché alcune potrebbero 
-- necessitare il require() prima di essere impostati
require("config.keymaps")
