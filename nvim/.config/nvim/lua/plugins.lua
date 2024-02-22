local M = {}

function M.setup()
  -- Indicate first time installation
  local packer_bootstrap = false

  -- packer.nvim configuration
  local conf = {
		profile = {
			enable = true,
			threshold = 0,			--- defines the allowed time in ms for a plugin to be loaded
		},
    display = {
      open_fn = function()
        return require("packer.util").float { border = "rounded" }
      end,
    },
  }

  -- Check if packer.nvim is installed
  -- Run PackerCompile if there are changes in this file
  local function packer_init()
    local fn = vim.fn
    local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
      packer_bootstrap = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
      }
      vim.cmd [[packadd packer.nvim]]
    end
    vim.cmd "autocmd BufWritePost plugins.lua source <afile> | PackerCompile"
  end

  -- Plugins
  local function plugins(use)
    use { "wbthomason/packer.nvim" }

    -- Colorscheme
    use {
      "sainnhe/everforest",
      config = function()
        vim.cmd "colorscheme everforest"
      end,
    }
		
		-- Which-Key for showing keymappings
		use {
			"folke/which-key.nvim",
			-- event = "VimEnter",							-- only load after startup
	--		cmd = "WhichKey",
			config = function()
				require("config.whichkey").setup()
			end,
		}

		-- lualine as status line at the bottom
		use {
			"nvim-lualine/lualine.nvim",
			event = "VimEnter",							-- load on entering vin
			config = function()
				require("config.lualine").setup()
			end,
			requires = { "nvim-tree/nvim-web-devicons" },
		}

		-- Treesitter for syntac highlighting
		use {
			"nvim-treesitter/nvim-treesitter",
			run = function() 
				local ts_update = require('nvim-treesitter.install').update({with_sync = true})
				ts_update()
			end,
			config = function()
				require("config.treesitter").setup()
			end,
		}

		use {
			'akinsho/bufferline.nvim',
			tag = "v4.3.0",
			requires = 'nvim-tree/nvim-web-devicons',
			config = function()
				require("config.bufferline").setup()
			end,
	}

		use {
			"SmiteshP/nvim-gps",
			requires = "nvim-treesitter/nvim-treesitter",
			module = "nvim-gps",
			config = function()
				require("nvim-gps").setup()
			end,
		}

		-- nvim-tree as a file explorer
		use {
			'nvim-tree/nvim-tree.lua',
			commit = '0a89dcb464b433d2d7b97a8f15d0b608c718dc13', -- master on 01.08.2023
			requires = {
				'nvim-tree/nvim-web-devicons', -- optional
			},
			cmd = { "NvimTreeToggle" }, 			-- only load when required -> on executing command
			config = function()
				require("config.nvimtree").setup()
			end,
		}

		-- telescope as fuzzy file searcher
		use {
			'nvim-telescope/telescope.nvim',
			tag = '0.1.2',
			requires = {
				{'nvim-lua/plenary.nvim'},
				{
					'nvim-telescope/telescope-live-grep-args.nvim',
					commit = '0f75ea809c46af8997c64f49c52e3c641d887885', -- master branch for 05.04.2023
				},
			},
		}

    if packer_bootstrap then
      print "Restart Neovim required after installation!"
      require("packer").sync()
    end
  end

  packer_init()

  local packer = require "packer"
  packer.init(conf)
  packer.startup(plugins)
end

return M
