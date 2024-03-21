return {
	"lewis6991/gitsigns.nvim",
	version = "0.7",
	event = "BufEnter",
	config = function()
		require("gitsigns").setup({
			signcolumn = true,	-- show the line indicating changes
			numhl = false, -- colors the linenumber 
			linehl = false, -- colors the changed lines
			signs = {
				add          = { text = '│' },
				change       = { text = '│' },
				delete       = { text = '_' },
				topdelete    = { text = '‾' },
				changedelete = { text = '~' },
				-- don't show signs for untracked lines
				untracked    = { text = '' },
  },
			on_attach = function()
				vim.wo.signcolumn = "yes"
			end
		})
	end,
	keys = {
		{ "<leader>gbl", "<cmd>Gitsigns blame_line<cr>", desc = "Git: Blame for line" },
		{ "<leader>gtb", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Git: Toggle Blame line" },
		{ "<leader>ghl", "<cmd>Gitsigns toggle_linehl<cr>", desc = "Highlight changed lines" },
	}
}







