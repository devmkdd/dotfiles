local opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }


-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Define Space as the leader key
-- keymap("", "<Space>", "<Nop>", opts)H
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = ""

-- Mapping to copy selection in visual mode -  '\' is used as escape
keymap('v', '<leader>y', '\"*y', opts)

-- ==== Normal Mode ==== --

-- Center the search results vertically ('zz')
keymap("n", "n", "nzz", opts)
keymap("n", "n", "Nzz", opts)

-- Switch between buffers by using Shift and h or l
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)

-- move down / up to the next line when lines wrap instead of jumping to the next line after the wrapping one
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'",expr_opts)
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'",expr_opts)


-- Cancel the higlighting of search results when canceling search
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", opts)



-- == Definitions for telescope in normal mode ==
keymap("n", "<leader>fc", ":lua require('telescope-live-grep-args.shortcuts').grep_word_under_cursor()<cr>", { desc = "Find word under cursor"})
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files (Telescope)" })
keymap("n", "<leader>ft", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>", { desc = "Find Text (Telescope)"})
keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent Files (Telescope)" })
keymap("v", "<leader>fs", ":lua require('telescope-live-grep-args.shortcuts').grep_visual_selection()<cr>", { desc = "Find selection"})


-- == nvim-tree == --
--keymap("n", "<leader>tt", "<cmd>NvimTreeToggle<cr>", opts)
--keymap("n", "<leader>ft", "<cmd>NvimTreeFocus<cr>", opts)



-- ==== Visual Mode ==== --

-- use < / > to indent selected text in visual mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move the selected text down or up 
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)

