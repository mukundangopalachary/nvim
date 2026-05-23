return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      auto_install = true,
      ensure_installed = {
        "java",
        "lua",
        "python",
        "javascript",
        "typescript",
        "markdown",
        "markdown_inline",
      },
      highlight = {
        enable = true,
      },
      indent = { enable = true },
    })
  end,
}
