print("loading barbar...")

local barbar = require("barbar")

barbar.setup({
    animation = true,
    auto_hide = false,
    clickable = true,
    exclude_ft = { "alpha", "NvimTree" },
    exclude_name = { "NvimTree" },
    icons = {
        buffer_index = true,
        buffer_number = false,
        button = '',

        diagnostics = {
            [vim.diagnostic.severity.ERROR] = {enabled = true, icon = 'ﬀ'},
            [vim.diagnostic.severity.WARN] = {enabled = false},
            [vim.diagnostic.severity.INFO] = {enabled = false},
            [vim.diagnostic.severity.HINT] = {enabled = false},
        },
        filetype = {
            custom_colors = false,
            enabled = true,
        },
        separator = {left = '▎', right = ''},

        separator_at_end = true,

        modified = {button = '●'},
        pinned = {button = '', filename = true},

        preset = 'default',

        alternate = {filetype = {enabled = false}},
        current = {buffer_index = true},
        inactive = {button = '×'},
        visible = {modified = {buffer_number = true}},
    },
    sidebar_filetypes = {
        NvimTree = {
            text = 'Welcome to StudioNimbus',
            text_align = 'left',
        },
    },
})

vim.keymap.set("n", "<leader>1", "<Cmd>BufferGoto 1<CR>", { desc = "Buffer 1" })
vim.keymap.set("n", "<leader>2", "<Cmd>BufferGoto 2<CR>", { desc = "Buffer 2" })
vim.keymap.set("n", "<leader>3", "<Cmd>BufferGoto 3<CR>", { desc = "Buffer 3" })
vim.keymap.set("n", "<leader>4", "<Cmd>BufferGoto 4<CR>", { desc = "Buffer 4" })
vim.keymap.set("n", "<leader>5", "<Cmd>BufferGoto 5<CR>", { desc = "Buffer 5" })
vim.keymap.set("n", "<leader>6", "<Cmd>BufferGoto 6<CR>", { desc = "Buffer 6" })
vim.keymap.set("n", "<leader>7", "<Cmd>BufferGoto 7<CR>", { desc = "Buffer 7" })
vim.keymap.set("n", "<leader>8", "<Cmd>BufferGoto 8<CR>", { desc = "Buffer 8" })
vim.keymap.set("n", "<leader>9", "<Cmd>BufferGoto 9<CR>", { desc = "Buffer 9" })
vim.keymap.set("n", "<leader>0", "<Cmd>BufferLast<CR>", { desc = "Buffer Last" })
vim.keymap.set("n", "<leader>bd", "<Cmd>BufferClose<CR>", { desc = "Buffer Close" })
vim.keymap.set("n", "<leader>bc", "<Cmd>BufferCloseAllButCurrentOrPinned<CR>", { desc = "Buffer Close All But Current" })
vim.keymap.set("n", "<leader>bp", "<Cmd>BufferPin<CR>", { desc = "Buffer Pin" })
vim.keymap.set("n", "<leader>bm", "<Cmd>BufferMoveNext<CR>", { desc = "Buffer Move Next" })
vim.keymap.set("n", "<leader>bp", "<Cmd>BufferMovePrev<CR>", { desc = "Buffer Move Prev" })
return{}