local term_count = 0

return {
	"akinsho/toggleterm.nvim",
	version = "*",

	keys = {
		{ "<C-/>", "<cmd>ToggleTermToggleAll<cr>", mode = { "n", "t" }, desc = "Show/Hide terminal" },
		{ "<C-_>", "<cmd>ToggleTermToggleAll<cr>", mode = { "n", "t" }, desc = "Show/Hide terminal" },
		{
			"<leader>tn",
			function()
				term_count = term_count + 1
				vim.cmd(term_count .. "ToggleTerm")
			end,
			mode = "n",
			desc = "Create new terminal",
		},
	},

	config = function()
		require("toggleterm").setup({
			size = 15,
			hide_numbers = true,
			direction = "horizontal",
			close_on_exit = true,
			start_in_insert = false,
		})

		vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit Normal mode" })
	end,
}
