-- ==== LSP configuration using mason

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"jsonls",			-- ls for JSON
					"lua_ls",			-- ls for lua
					"marksman",		-- ls for markdown
					"tsserver",		-- ls for js/ts
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.marksman.setup({{}})
			lspconfig.tsserver.setup({})
			vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, { desc = "hover" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "go to definition" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "code actions" })
		end,
	},
}
