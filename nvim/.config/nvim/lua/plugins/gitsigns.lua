return {
	"lewis6991/gitsigns.nvim",
	version = "0.7",
	event = "BufEnter",
	config = function()
		require("gitsigns").setup({
			signcolumn = true,
			on_attach = function()
				vim.wo.signcolumn = "yes"
			end
		})
	end,
	keys = {
		{ "<leader>bl", "<cmd>Gitsigns blame_line<cr>", desc = "Git: Blame line" },
	}
}







