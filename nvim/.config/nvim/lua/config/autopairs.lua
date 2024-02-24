local Module = {}

function Module.setup()
	
	local npairs = require "nvim-autopairs"
	npairs.setup {
		check_ts = true,		-- check for treesitter
	}
	npairs.add_rules(require "nvim-autopairs.rules.endwise-lua")
end

return Module
