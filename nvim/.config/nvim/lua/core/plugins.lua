-- [[ plugins.lua ]]

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
)

-- Install your plugins here
return require('packer').startup(function(use)
  

	-- My plugins here
  use 'wbthomason/packer.nvim' 			-- Have packer manage itself

  use "nvim-lua/popup.nvim" 				-- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" 			-- Useful lua functions used by lots of plugins
  
-- Color Scheme
	use {
					"catppuccin/nvim",
					tag = 'v1.3.0',
					as = "catppuccin"
	}

  use {
					'nvim-tree/nvim-tree.lua',
					commit = '0a89dcb464b433d2d7b97a8f15d0b608c718dc13', -- master on 01.08.2023
					requires = {
									'nvim-tree/nvim-web-devicons', -- optional
					},
  }


	-- Telescope as fuzzy finder
	use {
					'nvim-telescope/telescope.nvim',
					tag = '0.1.2',
					requires = {
									{'nvim-lua/plenary.nvim'},
									{
													'nvim-telescope/telescope-live-grep-args.nvim',
													commit = '0f75ea809c46af8997c64f49c52e3c641d887885', -- master branch for 05.04.2023
									},			-- used to pass arguments for filtering like filetype into live grep
					},
					config = function()
									require('telescope').load_extension('live_grep_args')
					end
	}


	-- LSP
	use {
					'VonHeikemen/lsp-zero.nvim',
					branch = 'v2.x',
					requires = {
									-- LSP Support
									{'neovim/nvim-lspconfig'},             -- Required
								  {'williamboman/mason.nvim'},           -- Optional
								  {'williamboman/mason-lspconfig.nvim'}, -- Optional
								  -- Autocompletion
									{'hrsh7th/nvim-cmp'},     -- Required
								  {'hrsh7th/cmp-nvim-lsp'}, -- Required
									{'L3MON4D3/LuaSnip'},     -- Required
  }
}

	-- Treesitter for better syntax highlighting
	use {
					'nvim-treesitter/nvim-treesitter',
					tag = 'v0.9.0',
					run = function()
									local ts_update = require('nvim-treesitter.install').update({with_sync = true})
									ts_update()
					end,
	}

	use {
					"nvim-treesitter/nvim-treesitter-context",
					commit = "14856c9ee6eb0ede0ae9b43782c9be5e7bd946e6",
	}

  -- Add bufferline for holding buffers in tabs
	use {
					'akinsho/bufferline.nvim',
					tag = "v4.3.0", 
					requires = 'nvim-tree/nvim-web-devicons'
	}

	-- Custom Status bar at the bottom
  use {
					'nvim-lualine/lualine.nvim',
					requires = {
									'nvim-tree/nvim-web-devicons',
									'linrongbin16/lsp-progress.nvim',
					}
	}
	use {
					'linrongbin16/lsp-progress.nvim',
					requires = {'nvim-tree/nvim-web-devicons'},
					config = function()
									require('lsp-progress').setup()
					end
	}

	use {
					"vinnymeller/swagger-preview.nvim",
					run = "npm install -g swagger-ui-watcher",
	}

	-- Zettelkasten plugon for neovim
	use 'mickael-menu/zk-nvim'

	-- Plugins for previewung markdown
	-- preview in browser
	use ({
					"iamcco/markdown-preview.nvim",
				    run = function() vim.fn["mkdp#util#install"]() end,
		})


	-- preview in neovim
	use {
					"ellisonleao/glow.nvim",
					config = function() require("glow").setup() end
	}

	-- nvim ufo for better folding
	use {
					'kevinhwang91/nvim-ufo',
					tag = "v1.3.0",
					requires = 'kevinhwang91/promise-async'
	}


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
