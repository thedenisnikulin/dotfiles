local map = vim.api.nvim_set_keymap

vim.g.mapleader = " "

---------------------------------------
-- BEAUTY
---------------------------------------

map('n', '<leader>n', ':set invrelativenumber<cr>', {})

map('n', '<leader>\\', ':NvimTreeToggle<cr>', {})
map('n', '<leader>b', ':Telescope buffers<cr>', {})
map('n', '<leader>e', ':Trouble<cr>', { noremap = true })

map('n', '<leader>s', ':w<cr>', {})

---------------------------------------
-- Navigation
---------------------------------------

-- Tab Navigation
map('n', '<leader><', ':tabprevious<cr>', {})
map('n', '<leader>>', ':tabnext<cr>', {})
map('n', '<leader>.', ':tabclose<cr>', {})

-- Buffer Switch
map('n', '<leader><Tab>', ':bn<cr>', {})
map('n', '<leader><S-Tab>', ':bp<cr>', {})
map('n', '<leader>w', ':bp|bd #<cr>', { noremap = true })

-- Split Navigation
map('n', '<leader>h', '<C-w>h<cr>', { noremap = true })
map('n', '<leader>l', '<C-w>l<cr>', { noremap = true })
map('n', '<leader>k', '<C-w>k<cr>', { noremap = true })
map('n', '<leader>j', '<C-w>j<cr>', { noremap = true })

map('n', '<leader>v+', ':vertical resize +10<cr>', {})
map('n', '<leader>v-', ':vertical resize -10<cr>', {})
map('n', '<leader>h+', ':resize +10<cr>', {})
map('n', '<leader>h-', ':resize -10<cr>', {})


-- neovim params TODO
map('n', '<leader>po', ':e $MYVIMRC<cr>', {})
map('n', '<leader>pr', ':source $MYVIMRC<cr>', {})
map('n', '<leader>ch', ':e /home/denis/.config/nvim/cheat.txt<cr>', {})

-- Terminal
map('t', '<Esc>', '<C-\\><C-n>', { noremap = true })
map('n', '<leader>t', ':split<cr> <C-W>j<cr> :resize -5<cr> :term <cr> i<cr>', {})

---------------------------------------
-- LSP
---------------------------------------

-- TODO add more lspsaga mappings
map('n', '<leader>cd', ':Lspsaga preview_definition<CR>', {})
map('n', '<leader>cx', ':Lspsaga hover_doc<CR>', {})
map('n', '<leader>ci', ':lua vim.lsp.buf.implementation()<CR>', {})
map('n', '<leader>ch', ':Lspsaga signature_help<CR>', {})
map('n', '<leader>ct', ':lua vim.lsp.buf.type_definition()<CR>', {})
map('n', '<leader>cr', ':lua vim.lsp.buf.references()<CR>', {})
map('n', '<leader>cs', ':lua vim.lsp.buf.document_symbol()<CR>', {})
map('n', '<leader>cw', ':lua vim.lsp.buf.workspace_symbol()<CR>', {})
map('n', '<leader>cl', ':lua vim.lsp.buf.declaration()<CR>', {})
map('n', '<leader>ff', ':lua vim.lsp.buf.formatting()<CR>', {})
map('n', '<leader>ca', ':Lspsaga code_action<CR>', {})
map('n', '<leader><F2>', ':Lspsaga rename<CR>', {})
map('n', '<leader>tt', ':Telescope<CR>', {})
map('n', '<leader>fo', ':Lspsaga open_floaterm<CR>', {})
map('n', '<leader>fc', ':Lspsaga close_floaterm<CR>', {})

-- Diagnostic
map('n', '<leader>dp', '<cmd>Lspsaga diagnostic_jump_prev<CR>', { noremap = true, silent = true })
map('n', '<leader>dn', '<cmd>Lspsaga diagnostic_jump_next<CR>', { noremap = true, silent = true })
map('n', '<leader>ds', '<cmd>Lspsaga show_line_diagnostics<CR>', { noremap = true, silent = true })

-- nmap <leader>cd	:lua vim.lsp.buf.definition()<CR>
-- nmap <leader>cx	:lua vim.lsp.buf.hover()<CR>
-- nmap <leader>ci :lua vim.lsp.buf.implementation()<CR>
-- nmap <leader>ch :lua vim.lsp.buf.signature_help()<CR>
-- nmap <leader>ct	:lua vim.lsp.buf.type_definition()<CR>
-- nmap <leader>cr	:lua vim.lsp.buf.references()<CR>
-- nmap <leader>cs	:lua vim.lsp.buf.document_symbol()<CR>
-- nmap <leader>cw	:lua vim.lsp.buf.workspace_symbol()<CR>
-- nmap <leader>cl	:lua vim.lsp.buf.declaration()<CR>
-- nmap <leader>ca	:lua vim.lsp.buf.code_action()<CR>

---------------------------------------
-- DAP
---------------------------------------

map('n', '<leader>dd', ':lua require"dapui".open(); require"dap".continue()<CR>', {})

map('n', '<leader>db', ':lua require"dap".toggle_breakpoint()<CR>', {})
map('n', '<leader>dB', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", {})

map('n', '<leader>du', ':lua require"dap".step_out()<CR>', {})
map('n', '<leader>di', ':lua require"dap".step_into()<CR>', {})
map('n', '<leader>do', ':lua require"dap".step_over()<CR>', {})
map('n', '<leader>dc', ':lua require"dap".continue()<CR>', {})

map('n', '<leader>dk', ':lua require"dap".up()<CR>', {})
map('n', '<leader>dj', ':lua require"dap".down()<CR>', {})
map('n', '<leader>de', ':lua require"dap".terminate(); require"dapui".close()<CR>', {})

map('n', '<leader>di', ':lua require"dap.ui.variables".hover()<CR>', {})
map('n', '<leader>di', ':lua require"dap.ui.variables".visual_hover()<CR>', {})
map('n', '<leader>d?', ':lua require"dap.ui.variables".scopes()<CR>', {})
map('n', '<leader>di', ':lua require"dap.ui.widgets".hover()<CR>', {})
map('n', '<leader>d?', ':lua local widgets=require"dap.ui.widgets";widgets.centered_float(widgets.scopes)<CR>', {})
map('n', '<leader>dr', ':lua require"dap".repl.toggle({}, "vsplit")<CR><C-w>l', {})
