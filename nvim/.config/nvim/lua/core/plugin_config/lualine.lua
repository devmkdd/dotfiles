require('lualine').setup {
	options = {
					icons_enabled = true,
				  theme = 'auto',
				  section_separators = {
									left = '',
									right = ''
					},
				  component_separators = {
									left = '',
									right = ''
					},
	},
	sections = {
					lualine_a = { 'mode' },
				  lualine_b = {'filename','location'},
				  lualine_c = {},
				  lualine_x = {'filetype', 'encoding'},
				  lualine_z = {
									{
													'branch',
													icon = {
																	'',
																	align='right'
													}
									}
					},
					lualine_y = { 'diff' }
	},
	extensions = { 'nvim-tree' }

}
