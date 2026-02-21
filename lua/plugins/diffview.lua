return {
	"sindrets/diffview.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	cmd = {
		"DiffviewOpen",
		"DiffviewClose",
		"DiffviewFileHistory",
		"DiffviewFocusFiles",
		"DiffviewToggleFiles",
		"DiffviewRefresh",
	},
	keys = {
		{ "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview Open" },
		{ "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Diffview Close" },
		{ "<leader>gh", "<cmd>DiffviewFileHistory<cr>", desc = "Diffview File History" },
	},
	opts = {
		enhanced_diff_hl = true,
		view = {
			merge_tool = {
				layout = "diff3_mixed",
			},
		},
		file_panel = {
			listing_style = "tree",
			win_config = {
				width = 35,
			},
		},
	},
	config = function(_, opts)
		require("diffview").setup(opts)
	end,
}
