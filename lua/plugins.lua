return require('packer').startup(function(use)
	-- Packer
	use 'wbthomason/packer.nvim'

	-- Mason and LSP Config
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'

	-- Hrsh7th Code Completion Suite
        use 'hrsh7th/nvim-cmp' 
    	use 'hrsh7th/cmp-nvim-lsp'
    	use 'hrsh7th/cmp-nvim-lua'
    	use 'hrsh7th/cmp-nvim-lsp-signature-help'
    	use 'hrsh7th/cmp-vsnip'                             
    	use 'hrsh7th/cmp-path'                              
    	use 'hrsh7th/cmp-buffer'                            
    	use 'hrsh7th/vim-vsnip'

	-- File Explorer
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional untuk file icons
		},
	}

	-- DAP Debugger
	use 'mfussenegger/nvim-dap'
	-- DAP UI
	-- UI for DAP
 	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
	-- Dracula theme for styling
	use 'Mofiqul/dracula.nvim'
	-- Treesitter
	use {
  	-- recommended packer way of installing it is to run this function, copied from documentation
        	'nvim-treesitter/nvim-treesitter',
      		run = function()
              	local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
              		ts_update()
         	end,
 	}

	-- Telescope used to fuzzy search files
 	use {
    		'nvim-telescope/telescope.nvim', tag = '0.1.0',
    		requires = { {'nvim-lua/plenary.nvim'} }
 	}

	-- Lualine information / Status bar
 	use {
    		'nvim-lualine/lualine.nvim',
    		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
 	}
	
	-- Bufferline
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

	-- Brackets
	use {
		"windwp/nvim-autopairs",
    		config = function() require("nvim-autopairs").setup {} end
	}

	-- IndentLine
	use "lukas-reineke/indent-blankline.nvim"

	-- TagBar
	use "preservim/tagbar"
	-- These optional plugins should be loaded directly because of a bug in Packer lazy loading
	use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
	use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
	use 'romgrk/barbar.nvim'


	-- Flutter and Dart
	use 'dart-lang/dart-vim-plugin'
	use 'thosakwe/vim-flutter'
	use 'natebosch/vim-lsc'
	use 'natebosch/vim-lsc-dart'

	-- Flutter tools
	use {
    'akinsho/flutter-tools.nvim',
    requires = {
        'nvim-lua/plenary.nvim',
        'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
}

	-- Numbering
	use 'sitiom/nvim-numbertoggle'

	-- Dahsboard
	use {
	  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    }
  end,
  requires = {'nvim-tree/nvim-web-devicons'}
}
end)
