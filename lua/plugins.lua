return require('packer').startup{
	function(use)
		use "wbthomason/packer.nvim"
		
		-- For use with Fern, for now
		use "antoinemadec/FixCursorHold.nvim"

		use {"tpope/vim-fugitive", branch = "master"}
		use {"lambdalisue/fern.vim", branch = "main"}
		use {
			"nvim-lualine/lualine.nvim",
			requires = {
				"kyazdani42/nvim-web-devicons",
				opt = true
			}
		}

		-- Themes
		use "ayu-theme/ayu-vim"
		use "morhetz/gruvbox"
		use "sainnhe/sonokai"
	end
}
