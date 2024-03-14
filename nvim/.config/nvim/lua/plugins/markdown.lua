return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown", "plantuml" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	dependencies = {
		"zhaozg/vim-diagram", -- used for syntax-highlighting in mermaid.js
		"aklt/plantuml-syntax",
	},
	keys = {
		vim.keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<cr>", { desc = "Markdown Preview" }),
	},
}
