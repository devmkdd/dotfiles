local Module = {}

function Module.setup()
	require("nvim-treesitter.configs").setup {
		
		-- ensure to install all parsers or selected ones
		ensure_installed = {
			"css",
			"html",
			"json",
			"kotlin",
			"lua",
			"markdown",
			"markdown_inline",
			"swift",
			"tsx",
			"typescript",
			"yaml"
		},

		-- install languages synchronously to ensure_installed ones
		sync_install = false,

		highlight = {
			enable = true,		-- required or treesitter will not be used
		},
	}

	print("Treesitter installed")
end

return Module
