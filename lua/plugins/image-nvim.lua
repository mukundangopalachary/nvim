return {
	{
		"3rd/image.nvim",
		opts = {
			backend = "kitty",
			processor = "magick_cli",
			integrations = {
				markdown = { enabled = true },
				neorg = { enabled = true },
				typst = { enabled = true },
			},
		},
		config = function(_, opts)
			require("image").setup(opts)
		end,
	},
}
