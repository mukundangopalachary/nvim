return {
	"stevearc/oil.nvim",
	opts = {
		default_file_explorer = true,
		columns = { "icon" },
		view_options = {
			show_hidden = true,
		},
		-- Configuration for the floating window
		float = {
			padding = 2,
			max_width = 80,
			max_height = 20,
			border = "rounded",
			win_options = {
				winblend = 0,
			},
		},
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function(_, opts)
		require("oil").setup(opts)
		-- Open Oil in a floating window instead of taking over the buffer
		vim.keymap.set("n", "<leader>e", function()
			require("oil").open_float()
		end, { desc = "Open Oil (Float)" })
		vim.keymap.set("n", "<leader>ef", function()
			require("oil").open_float()
		end, { desc = "Oil Focus (Float)" })
	end,
}
