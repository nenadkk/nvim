return{
    "ThePrimeagen/harpoon",
    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        vim.keymap.set("n", "<leader>a", mark.add_file)
        vim.keymap.set("n", "<Tab>q", ui.toggle_quick_menu)


        vim.keymap.set("n", "<Tab>1", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<Tab>2", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<Tab>3", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<Tab>4", function() ui.nav_file(4) end)
        vim.keymap.set("n", "<Tab>5", function() ui.nav_file(5) end)
        vim.keymap.set("n", "<Tab>6", function() ui.nav_file(6) end)
        vim.keymap.set("n", "<Tab>7", function() ui.nav_file(7) end)
        vim.keymap.set("n", "<Tab>8", function() ui.nav_file(8) end)
        vim.keymap.set("n", "<Tab>9", function() ui.nav_file(9) end)

    end
}
