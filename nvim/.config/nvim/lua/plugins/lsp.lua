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
					"kotlin_language_server", -- kotlin
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

			-- load lsp capabilities for defined language servers
			-- have to be passed 
			local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities()
			local utils = require('lspconfig/util')

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = cmp_capabilities
			})
			lspconfig.marksman.setup({
				capabilities = cmp_capabilities
			})
			lspconfig.tsserver.setup({
				capabilities = cmp_capabilities
			})

			lspconfig.kotlin_language_server.setup({
				init_options = {
					-- required for storing data or the server will crash
					storagePath = utils.path.join(vim.env.XDG_DATA_HOME, "nvim-data")
				},
				capabilities = cmp_capabilities,
				on_attach = on_attach,
	--			flags = lsp_flags,
			})

			vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, { desc = "hover" })
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "go to definition" })
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "code actions" })
		end,
	},
}
