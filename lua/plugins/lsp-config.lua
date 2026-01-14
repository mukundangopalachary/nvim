return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},

	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = {
				"bashls",
				"clangd",
				"cssls",
				"elixirls",
				"eslint",
				"gopls",
				"html",
				"jdtls",
				"lua_ls",
				"pyright",
				"rust_analyzer",
				"taplo",
				"yamlls",
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.diagnostic.config({
				virtual_text = true,
				signs = true,
				underline = true,
			})

			-- Global default capabilities
			vim.lsp.config("*", {
				capabilities = capabilities,
			})

			-- Server-specific config
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
					},
				},
			})

			-- Enable all installed servers
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

			-- LSP keymaps
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
