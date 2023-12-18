local api = vim.api
local g = vim.g
local opt = vim.opt


-- Remap the leader key to spacea LEADER
-- These keybindings need to be defined before the first is called
-- otherwise it will default to "\\"
api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap, silent = true})
g.mapleader = " "
g.localleader = " "

-- [[ Context ]]
opt.signcolumn = "no"				-- str: Show or hide the column for max line length
opt.number = true						-- bool: show line numbers
opt.relativenumber = true		-- bool: show relative linenumbers
opt.scrolloff = 4						-- number: minimal number of screenlines that will stay
opt.termguicolors = true		-- bool: use terminal colors for more available colors
opt.showmode = false				-- bool: show or hide mode info in commandline
opt.cursorline = true				-- bool: show ot hide the current cursor line
opt.tabstop = 2
opt.shiftwidth = 2					-- number: Number of spaces for each step of (auto)indent.
opt.autoindent = true
opt.ignorecase = true
opt.smartcase = true
--[[ Theme ]]
--opt.syntax = "on"						-- str: Allow syntax highlighting

opt.splitbelow = true				-- bool: horizontal splits should open below
opt.splitright = true				-- bool: vertical splits should open at the right side
