
local Module = {}

function Module.setup()
	local telescope = require "telescope"


	telescope.setup {
		defaults == {},
		extensions = {
			live_grep_args = {
				auto_quoting = false, 																										-- enable/disable auto-quoting -> used to treat the whole prompt as one string 
    },
	},
}

	print("telescope loaded")
end

return Module
