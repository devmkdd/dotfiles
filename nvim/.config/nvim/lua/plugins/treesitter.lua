-- === Definition of Telescope plugin ===

return {

	"nvim-treesitter/nvim-treesitter",
	-- install languages synchronously to ensure_installed ones
	sync_install = false,

	build = ":TSUpdate", -- executed on plugin install
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({

			-- ensure to install selected parsers
			ensure_installed = {
				"css",
				"go",
				"html",
				"json",
				"kotlin",
				"lua",
				"markdown",
				"markdown_inline",
				"mermaid",
				"swift",
				"tsx",
				"typescript",
				"yaml",
			},

			sync_install = false, -- don't wait for parsers to be installed

			highlight = {
				enable = true, -- required or treesitter will not be used
				additional_vim_regex_highlighting = { "markdown" },
			},
		})
	end,
}
