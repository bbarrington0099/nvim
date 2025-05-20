--[[ print("loading copilot...")

local copilot = require("copilot")

copilot.setup({
    panel = {
        enabled = true,
        auto_refresh = true,
        keymap = {
            accept = "<C-CR>",
            jump_prev = "[[",
            jump_next = "]] --[[ ", comment issue due to double ]
            refresh = "gr",
            open = "<M-CR>",
        },
    },
    suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
            accept = "<C-CR>",
            next = "<M-CR>",
            prev = "<M-CR>",
            dismiss = "<C-e>",
        },
    },
}) ]]
return{}