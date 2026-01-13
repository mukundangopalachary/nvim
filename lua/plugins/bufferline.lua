return {
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			vim.opt.termguicolors = true

			require("bufferline").setup({
				options = {
					separator_style = "slant",
					hover = {
						enabled = true,
						delay = 200,
						reveal = { "close" },
					},
				},
			})

			-- =========================
			-- Bufferline keybindings
			-- =========================

			-- Next / Previous buffer
			vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", { silent = true })
			vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", { silent = true })

			-- Move buffers
			vim.keymap.set("n", "<leader>bn", "<cmd>BufferLineMoveNext<CR>", { silent = true })
			vim.keymap.set("n", "<leader>bp", "<cmd>BufferLineMovePrev<CR>", { silent = true })

			-- Close buffer
			vim.keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { silent = true })

			-- Pick buffer
			vim.keymap.set("n", "<leader>bb", "<cmd>BufferLinePick<CR>", { silent = true })

			-- Go to buffer by position (1–9)
			for i = 1, 9 do
				vim.keymap.set("n", "<leader>" .. i, "<cmd>BufferLineGoToBuffer " .. i .. "<CR>", { silent = true })
			end
		end,
	},
}
