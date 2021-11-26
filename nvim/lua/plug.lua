vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
	-- Self
	use 'wbthomason/packer.nvim'

	---------------------------------------
	-- BEAUTY
	---------------------------------------

	-- Colorschemes
	use 'shaunsingh/moonlight.nvim'
	use 'folke/tokyonight.nvim'
	use 'cocopon/iceberg.vim'
	use 'Mofiqul/vscode.nvim'
	use 'doums/darcula'
	use 'briones-gabriel/darcula-solid.nvim'
	use 'tomasiser/vim-code-dark'
	use 'wojciechkepka/vim-github-dark'

	-- Misc
	use 'rktjmp/lush.nvim'
	use 'ryanoasis/vim-devicons'
	use 'kyazdani42/nvim-web-devicons'

	---------------------------------------
	-- UI
	---------------------------------------

	-- Bufferline
	use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}

	-- Dashboard
	use 'glepnir/dashboard-nvim'

	-- Statusline
	use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
	use 'nvim-lua/lsp-status.nvim'

	-- Telescope
	use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
	use 'nvim-telescope/telescope-dap.nvim'

	-- Trouble
	use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }

	-- File Explorer
	use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons' }

	---------------------------------------
	-- LSP
	---------------------------------------

	-- collection of common configurations for the Nvim LSP client
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer'

	-- extensions to built-in LSP, for example, providing type inlay hints
	use 'nvim-lua/lsp_extensions.nvim'

	-- autocompletion framework for built-in LSP
	-- use 'nvim-lua/completion-nvim'
	use 'glepnir/lspsaga.nvim'

	-- Completion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'saadparwaiz1/cmp_luasnip'
	use 'hrsh7th/cmp-path'
	use 'ray-x/lsp_signature.nvim'

	-- Snippets
	use 'L3MON4D3/LuaSnip'

	use "rafamadriz/friendly-snippets"

	---------------------------------------
	-- COMMON
	---------------------------------------

	-- Debugging
	use 'mfussenegger/nvim-dap'
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

	-- Multi-cursor
	use 'mg979/vim-visual-multi'

	-- Autopairs
	use 'jiangmiao/auto-pairs'

	-- Treesitter
	use { 'nvim-treesitter/nvim-treesitter', branch = '0.5-compat', run = ':TSUpdate' }

	-- Comments
	use 'numToStr/Comment.nvim'

	-- Misc
	use "lukas-reineke/indent-blankline.nvim"
	use 'folke/which-key.nvim'
	use 'nvim-lua/plenary.nvim'

	---------------------------------------
	-- Language specific
	---------------------------------------

	-- TOML
	use 'cespare/vim-toml'

	-- Rust
	use 'simrat39/rust-tools.nvim'

	-- F#
	use 'adelarsq/neofsharp.vim'

end)
