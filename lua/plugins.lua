return require('packer').startup{
	function(use)
		use "morhetz/gruvbox"
		-- For use with Fern, for now
		use "antoinemadec/FixCursorHold.nvim"
		use {"tpope/vim-fugitive", branch = "master"}
		use {"lambdalisue/fern.vim", branch = "main"}

	end
}
