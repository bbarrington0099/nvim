print("loading vim-be-good...")

local builtin = require("vim-be-good")

vim.keymap.set("n", "<leader>v", vim.cmd.VimBeGood, { desc = "launches VimBeGood" })
return{}
