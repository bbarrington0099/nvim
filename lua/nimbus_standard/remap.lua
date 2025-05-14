print("setting root keys...")

vim.keymap.set("n", "<leader>t", vim.cmd.terminal, { desc = 'Toggle Terminal' })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("i", "<C-o>", "<Esc>")

vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>cr", [[:%s/\r//g<CR>]], { desc = "Remove carriage returns (^M)" })

vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so")
end)
