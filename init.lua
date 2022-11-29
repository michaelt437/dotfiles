require("plugins")
require("lualine-config")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Set transparent background
vim.cmd(
	[[
	if has("termguicolors")
		set termguicolors
	endif
	]]
)
vim.cmd("colorscheme gruvbox")
vim.cmd("hi normal guibg=none")

-- Ctrl+key to navigate between panes
vim.api.nvim_set_keymap("n", "<c-k>", ":wincmd k<CR>", {silent=true})
vim.api.nvim_set_keymap("n", "<c-j>", ":wincmd j<CR>", {silent=true})
vim.api.nvim_set_keymap("n", "<c-h>", ":wincmd h<CR>", {silent=true})
vim.api.nvim_set_keymap("n", "<c-l>", ":wincmd l<CR>", {silent=true})

-- Auto-close
-- 	Brackets	
vim.api.nvim_set_keymap("i", "(", "()<left>", {noremap=true})
vim.api.nvim_set_keymap("i", "[", "[]<left>", {noremap=true})
vim.api.nvim_set_keymap("i", "{", "{}<left>", {noremap=true})

-- 	Quotes
vim.api.nvim_set_keymap("i", "\'\'", "\'\'<left>", {noremap=true})
vim.api.nvim_set_keymap("i", "\"\"", "\"\"<left>", {noremap=true})

-- 	Parentheses shortcuts
vim.api.nvim_set_keymap("i", "(;", "();<ESC>hi", {noremap=true})
vim.api.nvim_set_keymap("i", "(';", "('');<ESC>hhi", {noremap=true})
vim.api.nvim_set_keymap("i", "(\";", "(\"\");<ESC>hhi", {noremap=true})

-- 	Creating curly block with and without trailing comma
vim.api.nvim_set_keymap("i", "{<CR>", "{<CR>}<ESC>O", {noremap=true})
vim.api.nvim_set_keymap("i", "{;<CR>", "{<CR>};<ESC>O", {noremap=true})
