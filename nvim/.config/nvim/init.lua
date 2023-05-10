--[[ init.lua ]]
--
--a LEADER
-- These keybindings need to be defined before the first is called
-- otherwise it will default to "\\"
-- Use this section to define custom key bindings
-- We define to leader keys
vim.g.mapleader = ","
vim.g.localleader = "\\"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- IMPORTS
require('vars')		-- Variables
require('opts')		-- Options
-- require('keys')	-- Keymaps
require('plugins')	-- Plugins

--colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha"
vim.cmd.colorscheme "catppuccin-macchiato"
