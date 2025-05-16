print("loading telescope keys...")

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>lf', builtin.find_files, { desc = 'Telescope list files' })
vim.keymap.set('n', '<leader>sf', builtin.live_grep, { desc = 'Telescope search files (grep)' })
vim.keymap.set('n', '<leader>ss', builtin.grep_string, { desc = 'Telescope search selected (grep)' })
vim.keymap.set('n', '<leader>pf', builtin.oldfiles, { desc = 'Telescope previous files' })
vim.keymap.set('n', '<leader>sh', builtin.search_history, { desc = 'Telescope search history' })

vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Telescope git files' })
vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = 'Telescope git status' })
vim.keymap.set('n', '<leader>gb', builtin.git_branches, { desc = 'Telescope git branches' })

vim.keymap.set('n', '<leader>hp', builtin.keymaps, { desc = 'Telescope list keymaps' })
return {}
