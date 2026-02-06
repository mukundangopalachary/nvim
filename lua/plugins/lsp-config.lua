return {
    -- Mason
    {
        "mason-org/mason.nvim",
        opts = {},
    },

    -- Mason ↔ LSP bridge (THIS IS CRITICAL)
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            "mason-org/mason.nvim",
            "neovim/nvim-lspconfig",
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "bashls",
                    "clangd",
                    "cssls",
                    "elixirls",
                    "eslint", -- maps to eslint-lsp
                    "gopls",
                    "html",
                    "jdtls",
                    "lua_ls",
                    "pyright",
                    "rust_analyzer",
                    "taplo",
                    "yamlls",
                },
            })
        end,
    },

    -- LSP (NEW API ONLY)
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- Diagnostics
            vim.diagnostic.config({
                virtual_text = true,
                signs = true,
                underline = true,
            })

            -- Default config for ALL servers
            vim.lsp.config("*", {
                capabilities = capabilities,
            })

            -- lua_ls custom config
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } },
                    },
                },
            })

            -- eslint config (NO require("lspconfig"))
            vim.lsp.config("eslint", {
                settings = {
                    format = true,
                },
            })

            -- Enable servers (AFTER mason-lspconfig setup!)
            vim.lsp.enable({
                "bashls",
                "clangd",
                "cssls",
                "elixirls",
                "eslint",
                "gopls",
                "html",
                "lua_ls",
                "pyright",
                "rust_analyzer",
                "taplo",
                "yamlls",
            })

            -- Keymaps + format-on-save
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local buf = args.buf
                    local client = vim.lsp.get_client_by_id(args.data.client_id)

                    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = buf })
                    vim.keymap.set("n", "D", vim.lsp.buf.definition, { buffer = buf })
                    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = buf })

                    if client and client.supports_method("textDocument/formatting") then
                        vim.api.nvim_create_autocmd("BufWritePre", {
                            buffer = buf,
                            callback = function()
                                vim.lsp.buf.format({ bufnr = buf })
                            end,
                        })
                    end
                end,
            })
        end,
    },
}

