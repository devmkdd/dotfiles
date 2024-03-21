return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config = function ()
		local hooks = require "ibl.hooks"
		-- create the highlight groups in the highlight setup hook, so they are reset
		-- every time the colorscheme changes
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
		end)

		require("ibl").setup {
			indent = {
				smart_indent_cap = true,		-- reduces the number of shown indents based on the surrounding code,
			},
			scope = {
				char = "│",									-- character for the scope -> will be a solid line
				show_start = true,					-- draw an underline below the start of the scope
				highlight = "RainbowYellow"	-- Should be set to the color of the theme in the future
			}

		}

	end
}
