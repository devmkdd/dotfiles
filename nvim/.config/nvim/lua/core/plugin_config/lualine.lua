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
					lualine_c = {
									{
													'diagnostics',
													-- Table of diagnostic sources, available sources are:
													--   'nvim_lsp', 'nvim_diagnostic', 'nvim_workspace_diagnostic', 'coc', 'ale', 'vim_lsp'.
													-- or a function that returns a table as such:
													--   { error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt }
													sources = { 'nvim_lsp'},

													-- Displays diagnostics for the defined severity types
													sections = { 'error', 'warn', 'info' },
													diagnostics_color = {
																	-- Same values as the general color option can be used here.
																	error = 'DiagnosticError', -- Changes diagnostics' error color.
																	warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
																	info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
													},
													symbols = { error = ' ', warn = ' ', info = ' ' },
													colored = true,           -- Displays diagnostics status in color if set to true.
													update_in_insert = true, -- Update diagnostics in insert mode.
													always_visible = false,   -- Show diagnostics even if there are none.
									}
					},
				  lualine_b = {},
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
