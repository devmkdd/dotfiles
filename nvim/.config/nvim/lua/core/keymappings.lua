local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Define Space as the leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = ""

-- Mapping to copy selection in visual mode -  '\' is used as escape
keymap('v', '<leader>y', '\"*y', opts)

-- Definitions for telescope in normal mode
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
--keymap("n", "<leader>lg", "<cmd>Telescope live_grep<cr>", opts) -- default call for live grep without custom arguments
keymap("n", "<leader>lg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>",opts)

-- Definitions for nvim-tree
keymap("n", "<leader>tt", "<cmd>NvimTreeToggle<cr>", opts)
keymap("n", "<leader>ft", "<cmd>NvimTreeFocus<cr>", opts)
