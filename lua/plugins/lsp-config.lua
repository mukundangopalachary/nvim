return {
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    -- v2.0+ automatically enables installed servers via vim.lsp.enable()
    opts = { automatic_enable = true }, 
    dependencies = {
        { "mason-org/mason.nvim" },
        "neovim/nvim-lspconfig",
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- 1. Define configuration for lua_ls (replaces .setup({}))
      -- Note: We do NOT call enable() here because mason-lspconfig does it automatically.
      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            diagnostics = { globals = { 'vim' } },
          },
        },
      })

      -- 2. Move keymaps to an LspAttach autocommand
      -- This replaces the old 'on_attach' callback or global keymap definitions
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          -- Only map K for the buffer where LSP attached
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = args.buf })

          vim.keymap.set('n', 'D', vim.lsp.buf.definition, {buffer = args.buf})
          vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        end
      })
    end
  }
}

