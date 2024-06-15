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


-- adjust color scheme to os setting
-- seems to be required to be set at the end
require("lazy").setup("plugins")

--require("plugins").setup()
local dn = require('dark_notify')
dn.run({
    schemes = {
      -- you can use a different colorscheme for each
      dark = {
				colorscheme = "catppuccin-frappe",
			},
      -- even a different `set background=light/dark` setting or lightline theme
      -- if you use lightline, you may want to configure lightline themes,
      -- even if they're the same one, especially if the theme reacts to :set bg
      light = {
        colorscheme = "catppuccin-latte",
      }
    },
})

-- Match the system
dn.update()
