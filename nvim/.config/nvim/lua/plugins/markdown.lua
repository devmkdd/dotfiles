return {
	-- plugin for setting recognizing the plantuml mkdp_filetype
	-- if its not loaded separatly the filetype is not recognized 
	-- so treesiter etc would not work for markdown or at least plantuml
	{
		"aklt/plantuml-syntax",
	},
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown", "plantuml" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
		-- required to set the recogize and provide command for plantuml files
		init = function()
			vim.g.mkdp_filetypes = { "markdown", "plantuml" }
		end,
		keys = {
			vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<cr>", { desc = "Markdown Preview" }),
		},
	}
}
