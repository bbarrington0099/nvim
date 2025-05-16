print("loading nvim-tree...")

local nvim_tree = require("nvim-tree")

nvim_tree.setup({
  actions = {
    open_file = {
      quit_on_open = false,
      resize_window = true,
    },
  },
})

local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  api.config.mappings.default_on_attach(bufnr)
  
  vim.keymap.set("n", "<leader>e", api.tree.focus, { desc = "Nvim-Tree Focus" }, opts("Nvim-Tree Focus"))

  vim.keymap.set("n", "<C-h>", api.node.open.horizontal, { desc = "Nvim-Tree Horizontal Split" }, opts("Nvim-Tree Horizontal Split"))
  vim.keymap.set("n", "<C-l>", api.node.open.vertical, { desc = "Nvim-Tree Vertical Split" }, opts("Nvim-Tree Vertical Split"))
  
  vim.keymap.set("n", "<C-t>", api.node.open.tab, { desc = "Nvim-Tree New Tab" }, opts("Nvim-Tree New Tab"))
end

require("nvim-tree").setup({
  on_attach = my_on_attach,
})
return{}
