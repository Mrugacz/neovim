return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            -- JS
            lspconfig.tsserver.setup({
                capabilities = capabilities,
            })
            -- LUA
            lspconfig.lua_ls.setup({
                capabilities = capabilities,
            })
            -- HTML
            lspconfig.html.setup({
                capabilities = capabilities,
            })
            -- BASH
            lspconfig.bashls.setup({
                capabilities = capabilities,
            })
            -- PYTHON
            lspconfig.pylsp.setup({
                capabilities = capabilities,
                settings = {
                    pylsp = {
                        plugins = {
                            pycodestyle = {
                                maxLineLength = 200,
                            },
                        },
                    },
                },
            })
            -- C#
            lspconfig.csharp_ls.setup({
                capabilities = capabilities,
            })
            -- GO
            lspconfig.gopls.setup({
                capabilities = capabilities,
            })
            lspconfig.golangci_lint_ls.setup({
                capabilities = capabilities,
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
