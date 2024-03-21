return {
	"nvimtools/none-ls.nvim",
	dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
	config = function()
		local null_ls = require("null-ls")


		null_ls.setup({
			sources = {
		-- eslint support has been moved to a separate packages
		-- has to be required from the package
				require("none-ls.diagnostics.eslint_d"),
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
			},
		})

		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "code formatter" })

	end,
}
