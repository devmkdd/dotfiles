require("nvim-treesitter.configs").setup {
				ensure_installed = {
								"markdown",
								"lua",
								"kotlin",
								"swift"
				},

				sync_install = false,

				auto_install = true,

				highlight = {
								enable = true,
								disable = { "" },		-- list of languages that should not be used														
				},
}
