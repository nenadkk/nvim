vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth= 4
vim.opt.expandtab= true

vim.opt.smartindent = true

vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile= true

vim.opt.scrolloff = 20

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
vim.opt.cursorline = true

vim.wo.foldmethod = 'expr'
vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 2
vim.opt.foldenable = false

--vim.cmd.colorscheme("onedark")
