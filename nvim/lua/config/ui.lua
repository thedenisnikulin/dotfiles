local g = vim.g

g.tokyonight_style = "night"

vim.cmd[[colorscheme tokyonight]]

require'lualine'.setup {
	options = {
		icons_enabled = true,
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
		disabled_filetypes = {},
		always_divide_middle = true,
		theme = 'tokyonight'
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = { 'branch', 'diff' },
		lualine_c = { {'filename', path = 1},
			{'diagnostics', sources={'nvim_lsp'}},
			function() return require('lsp-status').status() end
		},
		lualine_x = {'encoding', 'fileformat', 'filetype'},
		lualine_y = {'progress'},
		lualine_z = {'location'}
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {},
	extensions = {}
}
