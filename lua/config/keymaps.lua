-- Terminal movements
vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Go to left window" })
vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Go to lower window" })
vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Go to upper window" })
vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Go to right window" })

-- Exit terminal to NORMAL mode
vim.keymap.set("t", "jk", "<C-\\><C-n>", { desc = "Exit terminal mode" })

Snacks.toggle({
	name = "Virtual Lines",
	get = function()
		return vim.diagnostic.config().virtual_lines ~= false
	end,
	set = function(state)
		vim.diagnostic.config({ virtual_lines = state })
	end,
}):map("<leader>uv")
