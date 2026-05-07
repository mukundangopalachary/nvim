return {
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("trouble").setup({
				focus = true,
				warn_no_results = false,
				open_no_results = true,
				auto_close = true,
				auto_preview = false,
			})

			vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", { silent = true, desc = "Diagnostics" })
			vim.keymap.set("n", "<leader>xw", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", { silent = true, desc = "Buffer diagnostics" })
			vim.keymap.set("n", "<leader>xs", "<cmd>Trouble symbols toggle focus=false<CR>", { silent = true, desc = "Symbols" })
			vim.keymap.set("n", "<leader>xq", "<cmd>Trouble qflist toggle<CR>", { silent = true, desc = "Quickfix" })
			vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist toggle<CR>", { silent = true, desc = "Loclist" })
			vim.keymap.set("n", "gr", "<cmd>Trouble lsp_references toggle<CR>", { silent = true, desc = "References" })
		end,
	},
}
