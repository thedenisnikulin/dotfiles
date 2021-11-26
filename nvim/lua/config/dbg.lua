local dap = require('dap')

dap.adapters.netcoredbg = {
	type = 'executable',
	command = '~/.local/share/netcoredbg/netcoredbg',
	args = {'--interpreter=vscode'},
}

dap.configurations.cs = {
	{
		type = "netcoredbg",
		name = "Launch - netcoredbg",
		request = "launch",
		program = function()
			return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
		end,
	},
}

dap.adapters.lldb = {
	type = 'executable',
	command = '/usr/bin/lldb-vscode-12',
	name = "lldb"
}

dap.configurations.rust = {
	{
		name = "Launch - lldb",
		type = "lldb",
		request = "launch",
		program = function()
			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
		cwd = '${workspaceFolder}',
		stopOnEntry = false,
		args = {},
		-- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
		--    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
		-- Otherwise you might get the following error:
		--    Error on launch: Failed to attach to the target process
		-- But you should be aware of the implications:
		-- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
		runInTerminal = false,
	},
}

dap.configurations.c = dap.configurations.rust

---------------------------------------
-- UI
---------------------------------------

require('dapui').setup {
	sidebar = {
		position = 'right'
	},
	floating = {
		mappings = {
			close = { "q", "<Esc>" }
		}
	}
}
