return require('packer').startup{
	function(use)
		use "wbthomason/packer.nvim"
		
		-- For use with Fern, for now
		use "antoinemadec/FixCursorHold.nvim"

		use {"lambdalisue/fern.vim", branch = "main"}
		use "neovim/nvim-lspconfig"
		use {
			"nvim-lualine/lualine.nvim",
			requires = {
				"kyazdani42/nvim-web-devicons",
				opt = true
			}
		}
		use {"tpope/vim-fugitive", branch = "master"}
    use({
      "jose-elias-alvarez/null-ls.nvim",
      config = function ()
          require("null-ls-config").setup()
      end,
      requires = {"nvim-lua/plenary.nvim"}
    })
    use("MunifTanjim/prettier.nvim")
    use ({
      "nvim-treesitter/nvim-treesitter",
      run = function()
          local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
          ts_update()
      end
    })
    use "nvim-telescope/telescope-fzy-native.nvim"
    use({
      "nvim-telescope/telescope.nvim",
      tag = "0.1.1",
      requires = {"nvim-lua/plenary.nvim"}
    })

		-- Themes
		use "ayu-theme/ayu-vim"
		use "morhetz/gruvbox"
		use "sainnhe/sonokai"
	end
}
