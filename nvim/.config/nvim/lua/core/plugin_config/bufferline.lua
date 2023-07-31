
local macchiato = require("catppuccin.palettes").get_palette "macchiato"
local bufferline = require('bufferline')
bufferline.setup{
				options = {
								always_show_bufferline = true,
								show_buffer_icons = false,
								show_buffer_close_icons = false,
								enforce_regular_tabs = true,
								separator_style = { '', '' },				-- prevent any separators to appear between the tabs
								offsets = {
												{ filetype = "NvimTree",},
								},
								indicator = {
												style = "none",
								},
								modified_icon = "",
								tab_size = 25,
	--			},
--				highlights = require("catppuccin.groups.integrations.bufferline").get {
				}
--				options = {
--								style_preset = bufferline.style_preset.minimal,
				--				numbers = "ordinal",
					--			separator_style = nil--{"",""}
	--			},
				-- read highlighting config from catppuccin theme
			--	highlights = require("catppuccin.groups.integrations.bufferline").get {
				--				styles = { "italic", "bold" },
				--				custom = {
								--				all = {
									--							fill = { bg = macchiato.base },
										--		},
					--							mocha = {
						--										background = { fg = macchiato.text },
							--					},
					--			},
			--	},
}
