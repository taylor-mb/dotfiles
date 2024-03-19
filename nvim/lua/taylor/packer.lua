-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Catppuccin (colorscheme)
  use { "catppuccin/nvim", as = "catppuccin" }

  -- Treesitter (syntax highlighting and more)
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- Tmux-like navigation
  use 'christoomey/vim-tmux-navigator'

  -- CoC (completion from LSP and tags)
  use {'neoclide/coc.nvim', branch = 'release'}

  -- Todo comment highlighting
  use {
	  "folke/todo-comments.nvim", 
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
