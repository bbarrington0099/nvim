print("loading catppuccin...")

local catppuccin = require("catppuccin")

catppuccin.setup({
    flavour = "macchiato",
    integrations = {
        treesitter = true,
        nvimtree = true,
        telescope = {
            enabled = true,
        },
        barbar = true,
    },
})
return{}    
