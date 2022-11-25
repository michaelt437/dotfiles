return require('packer').startup{
	function(use)
		use "morhetz/gruvbox"

		vim.cmd("colorscheme gruvbox")
	end
}
