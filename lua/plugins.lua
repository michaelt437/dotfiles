return require('packer').startup{
	function(use)
		use "wbthomason/packer.nvim"
		
		-- For use with Fern, for now
		use "antoinemadec/FixCursorHold.nvim"
		use {"tpope/vim-fugitive", branch = "master"}
		use {"lambdalisue/fern.vim", branch = "main"}
		use "vim-airline/vim-airline"

		-- Themes
		use "ayu-theme/ayu-vim"
		use "morhetz/gruvbox"
		use "sainnhe/sonokai"
		use "vim-airline/vim-airline-themes"
	end
}
