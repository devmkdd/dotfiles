--[[ vars.lua ]]

vim.g.t_co = 256
vim.g.background = "dark"


-- update path of packager
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
