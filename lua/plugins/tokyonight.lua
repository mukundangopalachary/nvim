return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "storm",
    transparent = true,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      sidebars = "dark",
      floats = "transparent",
    },
    on_highlights = function(hl)
      hl.Comment = { fg = "#7f89b3", italic = true }
      hl.Cursor = { fg = "#0f1419", bg = "#7dcfff" }
      hl.NormalFloat = { bg = "none" }
      hl.FloatBorder = { bg = "none" }
      hl.FloatTitle = { bg = "none" }
    end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight-storm")
  end,
}
