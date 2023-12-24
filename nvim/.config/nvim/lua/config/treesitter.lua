local Module = {}

function Module.setup()
	require("nvim-treesitter.configs").setup {
		-- ensure to install all parsers or selected ones
		ensure_installed = "all",

		-- install languages synchronously to ensure_installed ones
		sync_install = false,

		highlight = {
			enable = true,		-- required or treesitter will not be used
		},
	}

	print("Treesitter installed")
end

return Module
