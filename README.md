# Custom Neovim Setup
You can just clone this repository in your `~/.config` directory after you installed all the dependencies and it should work just fine. 
# Requirements
Note: Some dependences may miss. Since the list of plugins used is provided you can go check the dependeces for every plugin individually.

- The setup was created for Debian/Ubuntu based systems. It is not garanted that it will work on other systems.
- It is suggested to use the last version of Neovim. Since this setup is based on Neovim 11.4 in the case you have an older version you might get some problems. See [Building Neovim from Source](https://github.com/neovim/neovim/wiki/Building-Neovim/688be28f98c18e73b5043879b5963287a9b13d6c). Make sure to have installed the [Build prerequisites](https://github.com/neovim/neovim/wiki/Building-Neovim/688be28f98c18e73b5043879b5963287a9b13d6c#build-prerequisites).
- `npm` (needed by Mason plugin)
- `git`
- `tree-sitter-cli` version > 0.20.8
- if you use `vimtex` you would need to install the `zathura` package. To compile the .tex file you would need an external compiler like `texlive` (if you use some package language, make sure to install them also)
# Config
If you add a file into `/lua/config` directory remember to require it into `init.lua`.

# Plugins
- [Lazy](https://lazy.folke.io/)
- [Alpha](https://github.com/goolord/alpha-nvim)
- [Harpoon](https://github.com/ThePrimeagen/harpoon)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [Luasnip](https://github.com/L3MON4D3/LuaSnip)
- [Markdown Preview](https://github.com/iamcco/markdown-preview.nvim)
- [Mason](https://github.com/mason-org/mason.nvim)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [Undotree](https://github.com/mbbill/undotree)
- [Vimtex](https://github.com/lervag/vimtex)

# Lsp 
If you want to use Lsps you have to install them trough Mason once the setup is operative
[Here](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md) you can find all the avaiable lsp configs.
- [bashls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#bashls)
- [cssls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#cssls)
- [html](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#html)
- [lua_ls](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#lua_ls)
- [marksman](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#marksman)
- [pylyzer](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#pylyzer)

# Colorscheme
- [Onedark](https://github.com/navarasu/onedark.nvim)

# Removing Neovim after building it from source
If you installed Neovim by building it from source you can erase it from you system by executing the following commands into the terminal:
- `sudo rm -f /usr/local/bin/nvim`
- `sudo rm -rf /usr/local/share/nvim`
- `sudo rm -rf /usr/local/lib/nvim`
- `sudo rm -rf /usr/local/include/nvim`
- `rm -rf ~/.config/nvim ~/.local/share/nvim ~/.cache/nvim`
- Remember to remove it olso from the directory you cloned it if you did not done it yet.

# Other useful links
- [Vim Cheatsheet](https://devhints.io/vim)
- [LSP Setup](https://vonheikemen.github.io/learn-nvim/feature/lsp-setup.html)
- [Lua-guide](https://neovim.io/doc/user/lua-guide.html)
- [TJ DeVries](https://www.youtube.com/@teej_dv) is one of the Neovim developer, you might find something usefull on his YouTube channel.

# Summary of commands
- Installing Neovim:  
`sudo apt update && sudo apt-get install ninja-build gettext cmake unzip curl npm && git clone https://github.com/neovim/neovim && cd neovim && git checkout stable && make CMAKE_BUILD_TYPE=RelWithDebInfo && cd build && cpack -G DEB && sudo dpkg -i nvim-linux-x86_64.deb`





