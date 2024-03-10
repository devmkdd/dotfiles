
return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	options = {
		always_show_bufferline = false,
		show_tab_indicators = true,
	},
	event = "BufEnter",
	config = true,
}


