return {
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,

		dependencies = {
			{
				"nvim-tree/nvim-web-devicons",
				lazy = false,
			},
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
		},

		config = function()
			-- Disable netrw (required)
			vim.g.loaded_netrw = 1
			vim.g.loaded_netrwPlugin = 1

			-- Setup nvim-tree
			require("nvim-tree").setup({
				sort = {
					sorter = "case_sensitive",
				},

				view = {
					width = 30,
					relativenumber = true,
				},

				renderer = {
					group_empty = true,
					highlight_git = true,

					icons = {
						webdev_colors = true, -- 🔥 REQUIRED for devicons
						show = {
							file = true,
							folder = true,
							folder_arrow = true,
							git = true,
						},
					},
				},

				filters = {
					dotfiles = false,
				},
			})

			-- Keymaps
			vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
			vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>", { silent = true })
		end,
	},
}
