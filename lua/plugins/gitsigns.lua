return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "▎" },
					change = { text = "▎" },
					delete = { text = "" },
					topdelete = { text = "" },
					changedelete = { text = "▎" },
				},
				signcolumn = true,
				numhl = false,
				linehl = false,
				current_line_blame = false,
				current_line_blame_opts = {
					delay = 300,
				},
				preview_config = {
					border = "rounded",
				},
				on_attach = function(bufnr)
					local gs = package.loaded.gitsigns

					local map = function(mode, lhs, rhs, desc)
						vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true, desc = desc })
					end

					map("n", "]h", gs.next_hunk, "Next hunk")
					map("n", "[h", gs.prev_hunk, "Prev hunk")
					map("n", "<leader>hp", gs.preview_hunk, "Preview hunk")
					map("n", "<leader>hs", gs.stage_hunk, "Stage hunk")
					map("n", "<leader>hr", gs.reset_hunk, "Reset hunk")
					map("n", "<leader>hb", gs.blame_line, "Blame line")
					map("n", "<leader>hS", gs.stage_buffer, "Stage buffer")
					map("n", "<leader>hR", gs.reset_buffer, "Reset buffer")
				end,
			})
		end,
	},
}
