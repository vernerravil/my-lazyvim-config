vim.opt.colorcolumn = "80"

-- WSL yank/clipboard configuration using win32yank
if vim.fn.has("wsl") == 1 then
	vim.g.clipboard = {
		name = "win32yank-wsl",
		copy = {
			["+"] = { "win32yank.exe", "-i", "--crlf" },
			["*"] = { "win32yank.exe", "-i", "--crlf" },
		},
		paste = {
			["+"] = { "win32yank.exe", "-o", "--lf" },
			["*"] = { "win32yank.exe", "-o", "--lf" },
		},
		cache_enabled = 0,
	}
end

vim.opt.clipboard = "unnamedplus"
