# Change float terminal size
vim.keymap.set("n", "<M-k>", ":resize +2<CR>", { desc = "Increase height" })
vim.keymap.set("n", "<M-j>", ":resize -2<CR>", { desc = "Decrease height" })
vim.keymap.set("n", "<M-l>", ":vertical resize +2<CR>", { desc = "Increase width" })
vim.keymap.set("n", "<M-h>", ":vertical resize -2<CR>", { desc = "Decrease width" })
