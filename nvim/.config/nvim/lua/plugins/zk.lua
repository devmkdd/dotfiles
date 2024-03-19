-- === Zettelkasten plugin
-- requires zk to be installed
-- -> https://github.com/zk-org/zk

return {
  "zk-org/zk-nvim",
  config = function()
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
  end
}
