return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- The "modern" preset gives a clean 2026 look with icons
		preset = "modern",
		win = {
			-- "SE" pins the anchor point to the South East (bottom-right) of the popup
			anchor = "SE",
			col = -1, --pins the window's anchor to the right edge of the screen
			-- col = vim.api.nvim_get_option("columns"),
			row = -1, -- pins it just above the status line
			--row = vim.api.nvim_get_option("lines") - 2,
			border = "rounded",
			width = 0.3, -- Limits width to 30% of your screen
		},
		layout = {
			spacing = 3, -- Adds space between the key and the description
		},
		-- Delay before popup (in ms). Set to 0 for instant feedback.
		delay = 300,
		spec = {
			-- Define groups to categorize your existing plugins
			{ "<leader>f", group = "file / find" },
			{ "<leader>g", group = "git" },
			{ "<leader>l", group = "lsp" },
			{ "<leader>w", group = "windows" },
			{ "<leader>b", group = "buffers" },
			{ "<leader>d", group = "debug" },
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
