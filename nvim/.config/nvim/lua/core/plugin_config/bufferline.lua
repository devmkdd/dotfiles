
local macchiato = require("catppuccin.palettes").get_palette "macchiato"
require('bufferline').setup{
				options = {
								numbers = "ordinal",
								separator_style = "slant"
				},
				-- read highlighting config from catppuccin theme
				highlights = require("catppuccin.groups.integrations.bufferline").get {
								styles = { "italic", "bold" },
								custom = {
												all = {
																fill = { bg = macchiato.base },
												},
												mocha = {
																background = { fg = macchiato.text },
												},
								},
				},
}
