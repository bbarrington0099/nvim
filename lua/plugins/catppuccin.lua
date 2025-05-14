print("loading catppuccin...")

local builtin = require("catppuccin")

builtin.setup({
    flavour = "macchiato",
    integrations = {
        treesitter = true,
        nvimtree = true,
        telescope = {
            enabled = true,
        },
    },
})

return{}    
