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
					width = 34,
					relativenumber = true,
				},

				renderer = {
					group_empty = true,
					highlight_git = true,
					highlight_opened_files = "name",
					root_folder_label = false,
					indent_markers = {
						enable = true,
					},

					icons = {
						webdev_colors = true, -- 🔥 REQUIRED for devicons
						git_placement = "after",
						modified_placement = "after",
						padding = " ",
						symlink_arrow = " -> ",
						glyphs = {
							default = "",
							symlink = "",
							bookmark = "󰆤",
							modified = "●",
							folder = {
								arrow_closed = "",
								arrow_open = "",
								default = "",
								open = "",
								empty = "",
								empty_open = "",
								symlink = "",
								symlink_open = "",
							},
							git = {
								unstaged = "M",
								staged = "S",
								unmerged = "",
								renamed = "R",
								untracked = "U",
								deleted = "D",
								ignored = "",
							},
						},
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

				actions = {
					open_file = {
						quit_on_open = false,
					},
				},
			})

			-- Keymaps
			vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
			vim.keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>", { silent = true })
		end,
	},
}
