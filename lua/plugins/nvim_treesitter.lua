print("loading nvim_treesitter...")

local treesitter = require("nvim-treesitter.configs")

treesitter.setup{
    ensure_installed = { "go", "lua" },

    sync_install = false,

    auto_install = true,

    highlight = {
        enable = true,

        additional_vim_regex_highlighting = false,
    },
}
return{}
