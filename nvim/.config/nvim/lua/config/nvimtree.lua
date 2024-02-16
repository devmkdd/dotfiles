local Module = {}

function Module.setup()
	require("nvim-tree").setup {
		disable_netrw = true,
		hijack_netrw = true,
		
		view = {
			number = true,
			relativenumber = true,
		},

		filters = {
			custom = { ".git" },
			dotfiles = false,
		},

		print("nvim-tree installed")
	}
	end

	return Module
