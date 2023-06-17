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
					lualine_a = { 'mode' },										-- show the current vim mode
	--			  lualine_b = {'filename','location'},		-- show current file in buffer with location
					lualine_b = {},			
				  lualine_c = {},
				  lualine_x = {'filetype', 'encoding'},			-- show type of current file and its encoding
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
