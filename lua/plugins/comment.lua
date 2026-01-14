return {
	"numToStr/Comment.nvim",
	opts = {},
	keys = {
		{
			"<C-_>",
			function()
				require("Comment.api").toggle.linewise.current()
			end,
			desc = "Toggle comment (line)",
		},
		{
			"<C-_>",
			function()
				require("Comment.api").toggle.linewise(vim.fn.visualmode())
			end,
			mode = "v",
			desc = "Toggle comment (visual)",
		},
	},
}
