require("zk").setup({
				picker = "telescope",

				lsp = {
								-- automatically attach buffers in a zk notebkook that match the given filetypes
								auto_attach = {
												enabled = true,
												filetypes = { "markdown" },
								},
				},
})
