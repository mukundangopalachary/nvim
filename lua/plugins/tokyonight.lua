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
      -- ==================================================
      -- BASE UI
      -- ==================================================

      hl.Normal = { fg = "#C8C5E6" }
      hl.NormalNC = { fg = "#C8C5E6" }

      hl.Cursor = {
        fg = "#0f1419",
        bg = "#7dcfff",
      }

      hl.NormalFloat = { bg = "none" }
      hl.FloatBorder = { bg = "none" }
      hl.FloatTitle = { bg = "none" }

      hl.WhichKeyNormal = { bg = "none" }
      hl.WhichKeyBorder = { bg = "none" }
      hl.WhichKeyTitle = { bg = "none" }

      -- ==================================================
      -- STANDARD HIGHLIGHTS
      -- ==================================================

      hl.Comment = {
        fg = "#615A7A",
        italic = true,
      }

      hl.Keyword = {
        fg = "#A78BFA",
        italic = true,
      }

      hl.Function = {
        fg = "#8CB4FF",
      }

      hl.String = {
        fg = "#E6A1C4",
      }

      hl.Type = {
        fg = "#B8A1FF",
      }

      hl.Number = {
        fg = "#E6A86A",
      }

      hl.Identifier = {
        fg = "#C8C5E6",
      }

      -- ==================================================
      -- TREESITTER
      -- ==================================================

      hl["@comment"] = {
        fg = "#615A7A",
        italic = true,
      }

      hl["@keyword"] = {
        fg = "#A78BFA",
        italic = true,
      }

      hl["@keyword.function"] = {
        fg = "#A78BFA",
        italic = true,
      }

      hl["@function"] = {
        fg = "#8CB4FF",
      }

      hl["@function.call"] = {
        fg = "#8CB4FF",
      }

      hl["@string"] = {
        fg = "#E6A1C4",
      }

      hl["@type"] = {
        fg = "#B8A1FF",
      }

      hl["@type.builtin"] = {
        fg = "#B8A1FF",
      }

      hl["@number"] = {
        fg = "#E6A86A",
      }

      hl["@property"] = {
        fg = "#C8C5E6",
      }

      -- ==================================================
      -- JAVA IMPORT / PACKAGE FIX
      -- ==================================================

      hl["@module"] = {
        fg = "#7C7AA6",
      }

      hl["@module.java"] = {
        fg = "#7C7AA6",
      }

      hl["@namespace"] = {
        fg = "#7C7AA6",
      }

      hl["@namespace.java"] = {
        fg = "#7C7AA6",
      }
    end,
  },

  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight-storm")
  end,
}
