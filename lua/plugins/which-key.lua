return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- The "modern" preset gives a clean 2026 look with icons
		preset = "modern",
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
