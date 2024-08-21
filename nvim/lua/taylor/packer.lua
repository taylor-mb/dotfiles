-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	-- Packer can manage itself
	use "wbthomason/packer.nvim"

	-- Telescope
	use {
		"nvim-telescope/telescope.nvim", tag = "0.1.6",
		-- or                            , branch = "0.1.x",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

	-- Catppuccin (colorscheme)
	use { "catppuccin/nvim", as = "catppuccin" }

	-- Treesitter (syntax highlighting and more)
	use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

	-- Treesitter context (shows function/namespace context at top of window)
	use "nvim-treesitter/nvim-treesitter-context"

	-- Tmux-like navigation
	use "christoomey/vim-tmux-navigator"

	-- Todo comment highlighting
	use {
		"folke/todo-comments.nvim", 
		requires =  {"nvim-lua/plenary.nvim"} 
	}

	-- Git fugitive (:Git blame)
	use "tpope/vim-fugitive"

	-- Mason 
	use "williamboman/mason.nvim"

	-- Native LSP config
	use "neovim/nvim-lspconfig"

	-- Setup lspconfig to automatically work with rust-analyzer
	use 'simrat39/rust-tools.nvim'

	-- Autocomplete (nvim-cmp)
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-nvim-lsp"

	-- Fidget (LSP status text)
	use "j-hui/fidget.nvim"
	
	-- Snippets
	use "hrsh7th/vim-vsnip"
	use "hrsh7th/vim-vsnip-integ"
	use "hrsh7th/cmp-vsnip"

	-- Telekasten (notes based on Telescope)
	use {
		'renerocksai/telekasten.nvim',
		require = {'nvim-telescope/telescope.nvim'}
	}

	-- Github Copilot
	use "github/copilot.vim"

	-- Copilot chat
	use "CopilotC-Nvim/CopilotChat.nvim"

end)

