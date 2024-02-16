local Module = {}

function Module.setup()

	require("bufferline").setup {
		options = {
			always_show_bufferline = true,
			show_tab_indicators = true,
			show_buffer_icons = true,
			show_buffer_close_icons = false,
---				enforce_regular_tabs = true,
				separator_style = { '', '' },				-- prevent any separators to appear between the tabs
			offsets = {
					{ filetype = "NvimTree",},
			},
			diagnostics = "nvim_lsp",
--				indicator = {
--					style = "none",
--				},
--				modified_icon = "",
--			},
			},
		}

		print("Installed bufferline")
	end

	return Module
	
