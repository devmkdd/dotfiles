--=== Configure lualine pluging

return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({

			options = {
				icons_enabled = true,
				always_divide_middle = true,
    theme = "catppuccin",
				  section_separators = {
									left = '',
									right = ''
					},
				  component_separators = {
									left = '',
									right = ''
					},

--    component_separators = '',
  --  section_separators = { left = '', right = '' },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = {},
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			tabline = {},
			extensions = {},
		})
	end
}
