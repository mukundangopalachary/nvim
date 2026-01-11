return {
  "nvim-tree/nvim-tree.lua",
  version = "*", -- Recommended to use stable releases
  lazy = false,  -- Tree should be available immediately
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- Required for file icons
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- RECOMMENDED: Disable netrw at the very start (prevents conflicts)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Setup with 2026 default-friendly options
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
        relativenumber = true, -- Shows relative line numbers in the tree
      },
      renderer = {
        group_empty = true,
        highlight_git = true,
        icons = {
          show = {
            git = true,
            file = true,
            folder = true,
          },
        },
      },
      filters = {
        dotfiles = false, -- Set to true to hide hidden files
      },
    })

    -- Common Keybindings
    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree', silent = true})
    vim.keymap.set('n', '<leader>ef', ':NvimTreeFocus<CR>', { desc = 'Focus NvimTree', silent = true })
  end,
}

