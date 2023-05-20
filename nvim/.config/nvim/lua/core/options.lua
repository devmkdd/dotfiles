--[[ options.lua ]]

-- [[ Context ]]
vim.opt.signcolumn = "yes"		-- str: Show or hide the column for max line lenght
vim.opt.colorcolumn = '120'		-- str: Show colored column for max line length
vim.opt.number = true			-- bool: show line numbers
vim.opt.relativenumber = true		-- bool: show relative linenumbers
vim.opt.scrolloff = 4			-- number: minimal number of screenlines that will stay
vim.opt.termguicolors = true		-- bool: use terminal colors for more available colors
vim.opt.showmode = false		-- bool: show or hide mode info in commandline
vim.opt.cursorline = true		-- bool: show ot hide the current cursor line
vim.opt.tabstop = 2

--[[ Theme ]]
vim.opt.syntax = "on"			-- str: Allow syntax highlighting

vim.opt.splitbelow = true		-- bool: horizontal splits should open below
vim.opt.splitright = true		-- bool: vertical splits should open at the right side
