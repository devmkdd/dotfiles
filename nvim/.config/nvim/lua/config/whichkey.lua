
local Module = {}

function Module.setup()
	
	local whichkey = require "which-key"

	local conf = {
		window = {
			border = "single",	-- none, single, double, shadow
			position = "bottom", -- bottom, top
		},
	}

	local options = {
		mode = "n",						-- normal mode
		prefix = "<leader>",
		buffer = nil, 				-- use global mappings instead of buffer specific
		silent = true,				-- use silent when creating keymaps
		noremap = true,
		nowait = false,
	}

	local keymappings = {
		["w"] = { "<cmd>update!<CR>", "Save" },

		b = {
			name = "Buffer",
			c = { "<Cmd>bd!<Cr>", "Close current buffer" },
			D = { "<Cmd>%bd|e#|bd#<Cr>", "Delete all buffers" },	
		},
		f = {
			name = "Find",
			e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
		},
	},

	whichkey.setup(conf)
	whichkey.register(keymappings, options)

end

return Module


