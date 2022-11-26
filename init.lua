require("plugins")

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

vim.api.nvim_set_keymap("n", "fn", ":Fern . -drawer -width=45 -toggle<CR>", {noremap=true, silent=true})
