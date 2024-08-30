return {
	"catppuccin/nvim",
	version = "1.9.0",
	name = "catppuccin",
	priority = 1000,
	config = function()
		vim.cmd "colorscheme catppuccin-frappe"
	end,
	integrations = {
		treesitter = true,
		neotree = true,
	}
}
