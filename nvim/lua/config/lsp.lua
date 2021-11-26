local lspconfig = require('lspconfig')
local lsp_installer = require("nvim-lsp-installer")

local cmp = require('config.cmp')

local lsp_status = require('lsp-status')
lsp_status.register_progress()
lsp_status.config({
	status_symbol = "🔨",
 	indicator_errors = ' ',
	indicator_warnings = ' ',
	indicator_hint = ' ',
	indicator_info = ' ',
	diagnostics = false,
	current_function = true,
	show_filename = false,
	spinner_frames = { '🌕', '🌖', '🌗', '🌘', '🌑', '🌒', '🌓', '🌔' }
})

lsp_installer.on_server_ready(function(server)
	local opts = {}

	if server.name == "sumneko_lua" then
		opts.settings = {
			Lua = {
				diagnostics = {
					globals = {'vim', 'use'},
				},
				workspace = {
					-- Make the server aware of Neovim runtime files
					library = vim.api.nvim_get_runtime_file("", true),
				},
				telemetry = { enable = false },
			},
		}
	end

	opts.capabilities = cmp.capabilities
	opts.on_attach = lsp_status.on_attach
	opts.flags = {
		debounce_text_changes = 150,
	}

	server:setup(opts)
end)

require('rust-tools').setup {
    tools = {
        inlay_hints = {
            only_current_line = false,
            only_current_line_autocmd = "CursorHold",
            show_parameter_hints = true,
            parameter_hints_prefix = "> ",
            other_hints_prefix = ": ",
            max_len_align = false,
            max_len_align_padding = 1,
            right_align = false,
            right_align_padding = 7,
            highlight = "Comment",
        },
    },
}
require('rust-tools.inlay_hints').set_inlay_hints()
require('rust-tools.runnables').runnables()
require('rust-tools.expand_macro').expand_macro()
require('rust-tools.hover_actions').hover_actions()

require("lsp_signature").setup()
