return {
	"nvim-java/nvim-java",
	ft = "java",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		require("java").setup({
			capabilities = capabilities,
			spring_boot_tools = { enable = true },
			java_test = { enable = true },
			java_debug_adapter = { enable = true },
		})
	end,
}
