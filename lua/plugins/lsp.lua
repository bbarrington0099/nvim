print("loading lsp...")

local mason = require("mason")

local mason_lspconfig = require("mason-lspconfig")

local mason_ts = "ts_ls"

local common_servers = {
    "lua_ls",
    "pyright",
    "jsonls",
    "html",
    "cssls",
    "gopls",
    "jdtls",
}

local mason_servers = {}
for _, server in pairs(common_servers) do
    table.insert(mason_servers, server)
end
table.insert(mason_servers, mason_ts)

for _, server in pairs(mason_servers) do
    print("    loading " .. server .. "...")
end

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

mason_lspconfig.setup({
    ensure_installed = servers,
    automatic_installation = true,
})

local lspconfig_ts = "tsserver"

local lspconfig_servers = {}
for _, server in pairs(common_servers) do
    table.insert(lspconfig_servers, server)
end
table.insert(lspconfig_servers, lspconfig_ts)

local lspconfig = require("lspconfig")

local cmp_nvim_lsp = require("cmp_nvim_lsp")

local capabilities = cmp_nvim_lsp.default_capabilities()

local signs = {
    Error = "",
    Warn = "",
    Hint = "",
    Info = "",
}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

local on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "LSP Go to Declaration", noremap = true, silent = true })
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP Go to Definition", noremap = true, silent = true })
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover", noremap = true, silent = true })
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "LSP Go to Implementation", noremap = true, silent = true })
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "LSP Signature Help", noremap = true, silent = true })
    vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, { desc = "LSP Add Workspace Folder", noremap = true, silent = true })
    vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, { desc = "LSP Remove Workspace Folder", noremap = true, silent = true })
    vim.keymap.set("n", "<space>wl", function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, { desc = "LSP List Workspace Folders", noremap = true, silent = true })
    vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, { desc = "LSP Type Definition", noremap = true, silent = true })
    vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, { desc = "LSP Rename", noremap = true, silent = true })
    vim.keymap.set("n", "<space>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action", noremap = true, silent = true })
    vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, { desc = "LSP References", noremap = true, silent = true })
    vim.keymap.set("n", "<space>sD", vim.diagnostic.open_float, { desc = "LSP Show Diagnostics", noremap = true, silent = true })
    vim.keymap.set("n", "[d", vim.diagnostic.goto_next, { desc = "LSP Next Diagnostic", noremap = true, silent = true })
    vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, { desc = "LSP Previous Diagnostic", noremap = true, silent = true })
end

for _, server in pairs(lspconfig_servers) do
    if server == "lua_ls" then
        lspconfig[server].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lazy"] = true,
                        }
                    },
                },
            },
        })
    else 
        lspconfig[server].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })
    end
end

return{}