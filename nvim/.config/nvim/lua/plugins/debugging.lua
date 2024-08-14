return {
	-- dap-ui for a debugging frontend
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"nvim-neotest/nvim-nio",
		}
	},
	-- base plugin for all debugging
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

			vim.keymap.set('n','<leader>dt', dapui.toggle, {desc = "Debug: Toggle UI"})
			vim.keymap.set('n','<leader>db', dap.toggle_breakpoint, {desc = "Add Breakpoint at line"})
			vim.keymap.set('n','<leader>dO', dap.step_over, {desc = "Debug: Step over"})
			vim.keymap.set('n','<leader>di', dap.step_into, {desc = "Debug: Step into"})
			vim.keymap.set('n','<leader>do', dap.step_out, {desc = "Debug: Step out"})
			vim.keymap.set('n','<leader>dc', dap.continue, {desc = "Debug: Continue"})

			-- custom colors for breakpoints
			vim.api.nvim_set_hl(0, "blue",   { fg = "#8caaee" })
			vim.api.nvim_set_hl(0, "green",  { fg = "#a6d189" })
			vim.api.nvim_set_hl(0, "yellow", { fg = "#e5c890" })
			vim.api.nvim_set_hl(0, "orange", { fg = "#ef9f76" })

			-- custom signs for breakpoints
			vim.fn.sign_define('DapBreakpoint',          { text='•', texthl='blue',   linehl='DapBreakpoint', numhl='DapBreakpoint' })
			vim.fn.sign_define('DapBreakpointCondition', { text='•', texthl='blue',   linehl='DapBreakpoint', numhl='DapBreakpoint' })
			vim.fn.sign_define('DapBreakpointRejected',  { text='•', texthl='orange', linehl='DapBreakpoint', numhl='DapBreakpoint' })
			vim.fn.sign_define('DapStopped',             { text='•', texthl='green',  linehl='DapBreakpoint', numhl='DapBreakpoint' })
			vim.fn.sign_define('DapLogPoint',            { text='•', texthl='yellow', linehl='DapBreakpoint', numhl='DapBreakpoint' })
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

