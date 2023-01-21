require("lualine").setup {
	options = {
		theme = 'horizon',
		section_separators = {
			left = '',
			right = ''
		},
		component_separators = {
			left = '',
			right = ''
		}
	},
	tabline = {
		lualine_a = {'buffers'},
	}
}
