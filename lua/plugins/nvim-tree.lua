print("loading nvim-tree...")

local function my_on_attach(bufnr)
  local api = require("nvim-tree.api")

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- Default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- Custom mappings
  vim.keymap.set("n", "<C-h>", api.node.open.horizontal, opts("Open: Horizontal Split"))
      vim.keymap.set("n", "<C-l>", api.node.open.vertical,   opts("Open: Vertical Split"))
  vim.keymap.set("n", "<C-t>", api.node.open.tab,        opts("Open: New Tab"))
  vim.keymap.set("n", "<leader>e", api.tree.focus, { desc = "Toggle file explorer" })
end

require("nvim-tree").setup({
  on_attach = my_on_attach,
  -- other config options, like:
  -- sort = { sorter = "case_sensitive" },
  -- view = { width = 30 },
})
return{}
