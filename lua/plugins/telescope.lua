return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "*",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		opts = {
			extensions = {
				["ui-select"] = require("telescope.themes").get_dropdown({}),
			},
		},
	},

	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").load_extension("ui-select")
		end,
	},
}
