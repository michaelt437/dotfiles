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

		-- Themes
		use "ayu-theme/ayu-vim"
		use "morhetz/gruvbox"
		use "sainnhe/sonokai"
	end
}
