return {
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"nvim-neotest/nvim-nio",
		}
	},
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			require("dapui").setup()
			
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			vim.keymap.set('n','<leader>db', dap.toggle_breakpoint, {desc = "Add Breakpoint at line"})
			vim.keymap.set('n','<leader>dc', dap.continue, {desc = "Continue debugging"})
		end,
	},
	-- package for pre configured adapter for 'go' language
	{
		"leoluz/nvim-dap-go",
		ft = "go",
		dependencies = "mfussenegger/nvim-dap",
		config = function ()
			require("dap-go").setup()
		end,
	},

}

