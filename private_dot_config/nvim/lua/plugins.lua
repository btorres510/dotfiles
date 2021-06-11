return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'tpope/vim-sensible'
	use 'Mofiqul/dracula.nvim'

	use 'nvim-lua/completion-nvim'

	use 'neovim/nvim-lspconfig'
	use 'kabouzeid/nvim-lspinstall'
	use 'nvim-lua/lsp-status.nvim'

	use {
		'windwp/nvim-autopairs',
		config = function()
			require("_nvim-autopairs")
		end
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = function()
			require 'nvim-treesitter.configs'.setup {ensure_installed = 'maintained', highlight = {enable = true}}
		end
	}

	use {
		'hoob3rt/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons'},
		config = function()
			require('_lualine')
		end
	}

	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
		config = function()
			require('_telescope')
		end
	}
end)
