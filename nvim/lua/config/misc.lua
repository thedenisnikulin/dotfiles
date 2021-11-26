local g = vim.g


require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
g.indent_blankline_filetype_exclude = {'dashboard', 'lsp-installer', 'lspinfo'}

require('bufferline').setup {
	options = {
		offsets = { { filetype = "NvimTree", text = "File Explorer", text_align = "left" } },
	}
}

require('Comment').setup {}
require("which-key").setup {}
require("lspsaga").init_lsp_saga {
	error_sign = '',
	warn_sign = '',
	hint_sign = 'h',
	infor_sign = '',
}

require'nvim-treesitter.configs'.setup {
	ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
	highlight = {
        enable = true,              -- false will disable the whole extension
	    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
	    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
	    -- Using this option may slow down your editor, and you may see some duplicate highlights.
	    -- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
}

require'telescope'.setup {
	pickers = {
		commands = {
			theme = "dropdown"
		}
	}
}

require('telescope').load_extension('dap')

require('trouble').setup {}

require('nvim-tree').setup {
	diagnostics = {
		enable = true
	},
	view = {
		side = 'left'
	}
}
