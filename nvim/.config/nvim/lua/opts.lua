--[[ opts.lua ]]

-- [[ Context ]]
vim.opt.signcolumn = "yes"		-- str: Show or hide the column for max line lenght
vim.opt.colorcolumn = '120'		-- str: Show colored column for max line length
vim.opt.number = true			-- bool: show line numbers
vim.opt.relativenumber = true		-- bool: show relative linenumbers
vim.opt.scrolloff = 4			-- number: minimal number of screenlines that will stay
vim.opt.termguicolors = false		-- bool: use terminal colors for more available colors

--[[ Theme ]]
vim.opt.syntax = "on"			-- str: Allow syntax highlighting

vim.opt.splitbelow = true		-- bool: horizontal splits should open below
vim.opt.splitright = true		-- bool: vertical splits should open at the right side
