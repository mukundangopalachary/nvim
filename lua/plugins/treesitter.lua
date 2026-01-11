return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'master', -- Add this to use the old working module
  build = ':TSUpdate',
  config = function()
    local configs = require('nvim-treesitter.configs')
    configs.setup({
      ensure_installed = { "java", "lua", "python", "javascript", "typescript" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}

