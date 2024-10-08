-- === Config for neotree filemanager ===
--
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		opts = {
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
				}
			}

		}
	},

	-- define keymappings
	keys = {
		-- toggle the filemanager
		{ "<leader>fe", "<cmd>Neotree toggle<cr>", desc = "Fileexplorer (NeoTree)" },
	},
}
