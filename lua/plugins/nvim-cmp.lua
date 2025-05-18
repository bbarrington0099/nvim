print("loading nvim-cmp...")

local cmp = require("cmp")

local luasnip = require("luasnip")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    completion = {
        completeopt = "menu,menuone,preview,noselect",
    },
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" },
    },
})

vim.keymap.set("i", "<C-k>", cmp.mapping.select_prev_item(), { desc = "Completion Select Previous" })
vim.keymap.set("i", "<C-j>", cmp.mapping.select_next_item(), { desc = "Completion Select Next" })
vim.keymap.set("i", "<C-b>", cmp.mapping.scroll_docs(-4), { desc = "Completion Scroll Docs Up" })
vim.keymap.set("i", "<C-f>", cmp.mapping.scroll_docs(4), { desc = "Completion Scroll Docs Down" })
vim.keymap.set("i", "<C-Space>", cmp.mapping.complete(), { desc = "Completion Complete" })
vim.keymap.set("i", "<C-e>", cmp.mapping.close(), { desc = "Completion Close" })
vim.keymap.set("i", "<C-CR>", cmp.mapping.confirm({ select = true }), { desc = "Completion Confirm" })

return{}
