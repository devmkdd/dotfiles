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
		{ "<leader>gbl", "<cmd>Gitsigns blame_line<cr>", desc = "Git: Blame for line" },
		{ "<leader>gtb", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Git: Toggle Blame line" },
	}
}







