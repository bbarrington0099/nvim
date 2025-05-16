print("loading vim-be-good...")

local vbg = require("vim-be-good")

vim.keymap.set("n", "<leader>v", vim.cmd.VimBeGood, { desc = "VimBeGood Launch" })
return{}
