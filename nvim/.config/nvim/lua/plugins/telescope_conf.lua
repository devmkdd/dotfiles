-- === Definition of Telescope plugin ===

return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.2',
	dependencies = {
		{'nvim-lua/plenary.nvim'},
		{
			'nvim-telescope/telescope-live-grep-args.nvim',
			commit = '0f75ea809c46af8997c64f49c52e3c641d887885', -- master branch for 05.04.2023
		},
	},
	-- basic config of telescope plugin --
	config = function()

		local builtin = require('telescope.builtin')
		local keymap = vim.api.nvim_set_keymap

		-- == Definitions for telescope in normal mode ==
		keymap("n", "<leader>fc", ":lua require('telescope-live-grep-args.shortcuts').grep_word_under_cursor()<cr>", { desc = "Find word under cursor"})
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files (Telescope)" })
		keymap("n", "<leader>ft", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>", { desc = "Find Text (Telescope)"})
		vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent Files (Telescope)" })
		keymap("v", "<leader>fs", ":lua require('telescope-live-grep-args.shortcuts').grep_visual_selection()<cr>", { desc = "Find selection"})

	end,

	-- configure extensions of telescope
	extensions = {

		-- live greps for passing arguments into the search string
		live_grep_args = {
			auto_quoting = false, 		-- used to treat the whole prompt as one string 
		},
	},

	-- == extension to let vim.ui.select use telescope ui
	{
		'nvim-telescope/telescope-ui-select.nvim',
		config = function()
			require("telescope").setup {
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown {
							-- even more opts
						},
						require("telescope").load_extension("ui-select")
					}
				}
			}
		end
	}
}



