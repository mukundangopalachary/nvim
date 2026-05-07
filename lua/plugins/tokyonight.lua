return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "moon",
    transparent = true,
    terminal_colors = true,
    styles = {
      comments = { italic = true },
      keywords = { italic = true },
      sidebars = "dark",
      floats = "dark",
    },
    on_colors = function(colors)
      colors.bg = "#07141a"
      colors.bg_dark = "#07141a"
      colors.bg_float = "#0b1b22"
      colors.bg_sidebar = "#0b1b22"
      colors.border = "#1a2a33"
      colors.border_highlight = "#24404f"
    end,
    on_highlights = function(hl, colors)
      hl.Normal = { bg = "NONE" }
      hl.NormalNC = { bg = "NONE" }
      hl.NormalFloat = { bg = "NONE" }
      hl.FloatBorder = { fg = colors.border, bg = "NONE" }
      hl.Pmenu = { bg = "#0b1b22", fg = colors.fg }
      hl.PmenuSel = { bg = "#24404f", fg = "#ffffff" }
      hl.Visual = { bg = "#24404f", fg = "#ffffff" }
      hl.CursorLine = { bg = "#0d1f27" }
      hl.CursorLineNr = { fg = "#82aaff", bold = true }
      hl.LineNr = { fg = "#575656" }
      hl.WinSeparator = { fg = "#1a2a33" }
      hl.VertSplit = { fg = "#1a2a33" }
      hl.StatusLine = { bg = "NONE" }
      hl.StatusLineNC = { bg = "NONE" }
      hl.SignColumn = { bg = "NONE" }
      hl.FoldColumn = { bg = "NONE" }
      hl.EndOfBuffer = { fg = "#07141a" }
      hl.NvimTreeNormal = { bg = "NONE" }
      hl.NvimTreeNormalNC = { bg = "NONE" }
      hl.NvimTreeEndOfBuffer = { fg = "#07141a" }
    end,
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight-moon")
  end,
}
