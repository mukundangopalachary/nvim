return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	config = function()
		vim.g.mkdp_browser =
			"firefox",
			-- Set a keymap to toggle the preview
			vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Markdown Preview" })

		-- Optional: If you want the preview to follow your cursor
		vim.g.mkdp_refresh_slow = 0
		vim.g.mkdp_auto_start = 0 -- Set to 1 if you want it to open as soon as you enter a file
	end,
}
