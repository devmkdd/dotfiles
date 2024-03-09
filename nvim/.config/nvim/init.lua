--[[ init.lua ]]
--
local api = vim.api
local g = vim.g
local opt = vim.opt

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1


-- Remap the leader key to spacea LEADER
-- These keybindings need to be defined before the first is called
-- otherwise it will default to "\\"
api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap, silent = true})
g.mapleader = " "
g.localleader = " "


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

-- IMPORTS
--require('core.variables')				-- Variables
--require('core.plugins')					-- Plugins
-- require('core.plugin_config')
--colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha"
--vim.cmd.colorscheme "catppuccin-macchiato"
--vim.cmd.colorscheme "catppuccin-mocha"
--
--
--
--require("plugins").setup()
