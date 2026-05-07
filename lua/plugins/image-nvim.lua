return {
	{
		"3rd/image.nvim",
		opts = function()
			local is_wezterm = vim.env.TERM_PROGRAM == "WezTerm" or vim.env.WEZTERM_EXECUTABLE ~= nil

			return {
				backend = is_wezterm and "sixel" or "kitty",
				processor = "magick_cli",
				integrations = {
					markdown = {
						enabled = true,
						only_render_image_at_cursor = is_wezterm,
						only_render_image_at_cursor_mode = "popup",
					},
					neorg = { enabled = true },
					typst = { enabled = true },
				},
			}
		end,
		config = function(_, opts)
			require("image").setup(opts)
		end,
	},
}
