vim.g.mapleader = " "

vim.keymap.set("i", "jj", '<esc>')
vim.keymap.set("n", "<C-s>",":w<enter>")
vim.keymap.set("i", "<C-s>","<Esc>:w<enter>a")

--movimento tra finestre
vim.keymap.set("n", "<C-l>","<C-w>l")
vim.keymap.set("n", "<C-k>","<C-w>k")
vim.keymap.set("n", "<C-j>","<C-w>j")
vim.keymap.set("n", "<C-h>","<C-w>h")


vim.keymap.set("n", "f","za")--fold/unfold code

--spostamento righe selezionate
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("i", "(", "()<Esc>h i")
vim.keymap.set("i", "[", "[]<Esc>h i")
vim.keymap.set("i", "{", "{}<Esc>h i")

vim.keymap.set("n", "m", ":NvimTreeToggle<enter>")

vim.keymap.set("n", "E", "$")
vim.keymap.set("v", "E", "$")

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

--terminale
vim.keymap.set("n", "<C-t>", "<Esc>:terminal<enter>i")

--copia-incolla dalla clipboard del sistema
vim.keymap.set("n", "<C-p>", "\"+p")
vim.keymap.set("v", "<C-y>", "\"+y")



vim.keymap.set("n", "<leader>v", "bve") --il cursore non deve essere all'inizio della parola
-- ricerca parola sotto il cursore o parola selezionata
vim.keymap.set("n", "?", ":/<C-r><C-w><enter>")
vim.keymap.set("v", "?", "y q/p<enter>")

vim.keymap.set("n", "<leader>no", ":noh<enter>")














