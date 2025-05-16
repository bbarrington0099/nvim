print("setting primary keymaps...")

vim.keymap.set("n", "<leader>t", vim.cmd.terminal, { desc = 'Primary Open Terminal' })

vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Primary Replace All of Selected" })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Primary Make Executable", silent = true })

vim.keymap.set("n", "<leader>cr", [[:%s/\r//g<CR>]], { desc = "Primary Remove Carriage Returns (^M)" })

vim.keymap.set("n", "<leader><leader>", function() vim.cmd("so") end, { desc = "Primary Source" })

vim.keymap.set("n", "<leader>q", function() vim.cmd("q!") end, { desc = "Primary Quit" })
vim.keymap.set("n", "<leader>Q", function() vim.cmd("qa!") end, { desc = "Primary Quit All" })


vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Primary Move to Left Window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Primary Move to Below Window" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Primary Move to Above Window" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Primary Move to Right Window" })


vim.keymap.set("i", "<C-i>", function() vim.cmd("w") end, { desc = "Primary Save" })
vim.keymap.set("n", "<C-I>", function() vim.cmd("qw") end, { desc = "Primary Save and Quit" })


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Primary Move Selected Down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Primary Move Selected Up" })


vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "Primary Paste Over" })


vim.keymap.set("i", "<C-o>", "<Esc>", { desc = "Primary Escape to Normal Mode" })
vim.keymap.set("v", "<C-o>", "<Esc>", { desc = "Primary Escape to Normal Mode" })
