local o = vim.opt
local g = vim.g
local exec = vim.api.nvim_exec

vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

o.termguicolors = true
o.encoding = 'UTF-8'
o.completeopt = 'menuone,noinsert,noselect'
o.shortmess = o.shortmess + 'c'
o.mouse = 'a'
o.sidescroll = 5
o.wrap = true
o.listchars = o.listchars + 'precedes:<,extends:>'

-- indent
o.smarttab = true
o.smartindent = true
o.expandtab = false 
o.tabstop = 4
o.shiftwidth = 4
o.list = true
o.listchars = o.listchars + 'eol:¬,tab:>.' -- space:·

o.cursorline = true
o.ea = false -- maintain splits size after closing a buf
o.number = true

o.clipboard = 'unnamedplus'
o.guicursor = 'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,n:blinkon100'

---------------------------------------
-- GLOBALS 
---------------------------------------

g.NERDTreeWinPos = 'left'
g.indentLine_char = '⎸' -- '│'
g.indentLine_color_term = 239
g.indentLine_color_gui = '#b0b0b0'


-- highlight all selected text for a sec
exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]], false)

