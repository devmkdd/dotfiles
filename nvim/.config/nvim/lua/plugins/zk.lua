-- === Zettelkasten plugin
-- requires zk to be installed
-- -> https://github.com/zk-org/zk

return {
	"zk-org/zk-nvim",
	commit = "dbf4eeab55b08856c9d6b6722dbff39630bb35eb",
	config = function()
		require("zk").setup({
			picker = "telescope",
			lsp = {

				config = {
					cmd  = { "zk", "lsp" },
					name = "zk",
				},
				-- automatically attach buffers in a zk notebkook that match the given filetypes
				auto_attach = {
					enabled = true,
					filetypes = { "markdown" },
				},
			},
		})
	end,
	keys = {
		-- Search within tags
				{ "<leader>nt", "<cmd>ZkTags<cr>", desc = "Notes: Search by Tag" },
				{ "<leader>nn", "<cmd>ZkNotes<cr>", desc = "Notes: Search by Notes" },
			},
			ft = "markdown",
	}
