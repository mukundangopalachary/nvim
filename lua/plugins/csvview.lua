return {
	"hat0uma/csvview.nvim",
	cmd = { "CsvViewEnable", "CsvViewDisable", "CsvViewToggle" },
	keys = {
		{
			"<leader>csv",
			"<cmd>CsvViewToggle<cr>",
			desc = "Toggle CSV View",
		},
	},
	opts = {
		parser = {
			delimiter = ",", -- 👈 REAL CSV delimiter
			comments = { "#", "//" },
		},

		-- 👇 Visual column separator (non-destructive)
		view = {
			border = "|",
		},

		keymaps = {
			-- CSV field text objects
			textobject_field_inner = { "if", mode = { "o", "x" } },
			textobject_field_outer = { "af", mode = { "o", "x" } },

			-- Arrow navigation
			jump_next_field_end = { "<Right>", mode = { "n", "v" } },
			jump_prev_field_end = { "<Left>", mode = { "n", "v" } },
			jump_next_row = { "<Down>", mode = { "n", "v" } },
			jump_prev_row = { "<Up>", mode = { "n", "v" } },
		},
	},

	config = function(_, opts)
		require("csvview").setup(opts)

		-- Column border highlight (Catppuccin-friendly)
		vim.api.nvim_set_hl(0, "CsvViewDelimiter", {
			fg = "#6c7086", -- overlay0
		})
	end,
}
