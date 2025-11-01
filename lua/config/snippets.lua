require("luasnip.loaders.from_vscode").lazy_load()

--
-- Setup dei comandi per l'autocomplete
--

local luasnip = require("luasnip")
local cmp = require('cmp')

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },

    sources = {
        --elencate per priorità decrescente
        {name = 'nvim_lsp'},
        {name = 'luasnip'},
        {name = 'buffer'}
    },

    preselect = 'item',

    mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),

        ['<CR>'] = cmp.mapping.confirm{
            {select = true},
            behavior = cmp.ConfirmBehavior.Replace
        },

        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end,{'i','s'}),

        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),

})

local s = luasnip.snippet
local t = luasnip.text_node
local i = luasnip.insert_node
--[[
-- In init.lua o keys.lua
vim.keymap.set({"i", "s"}, "<S-l>", function()
  if require("luasnip").jumpable(1) then
    require("luasnip").jump(1)
  end
end, { silent = true})


vim.keymap.set({"i", "s"}, "<S-h>", function()
  if require("luasnip").jumpable(-1) then
    require("luasnip").jump(-1)
  end
end, {silent = true})
]]


luasnip.add_snippets("html",
{
    s("doc", {
        t("<!DOCTYPE html>"),
        t({"", "<html lang=\""}),i(1,"it"),t("\">"),
        t({"", "\t<head>"}),
        t({"", "\t\t<title>"}),i(2),t("</title>"),
        t({"", "\t\t<meta charset=\""}),i(3,"utf-8"),t("\">"),
        t({"", "\t\t<meta name=\"description\" content=\""}),i(4),t("\">"),
        t({"", "\t\t<meta name=\"keywords\" content=\""}),i(5),t("\">"),
        t({"", "\t</head>"}),
        t({"", "\t<body>"}),
        t({"", "\t\t"}),i(6),
        t({"", "\t</body>"}),
        t({"","</html>"})
    })
})




