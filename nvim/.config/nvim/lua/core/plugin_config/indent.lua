require("ibl").setup({
	indent = {
		tab_char = "┊",
		char = ".",
		smart_indent_cap = true,	-- reduces the number of shown indents based on the surrounding code,
	},
	scope = {
		char = "│",								-- character for the scope -> will be a solid line
		show_start = true,				-- draw an underline below the start of the scope
	}
})
