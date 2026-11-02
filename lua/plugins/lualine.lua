return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	init = function()
		vim.g.trouble_lualine = false
	end,
	opts = function()
		return {
			options = {
				theme = "auto",
				globalstatus = true,
				disabled_filetypes = { statusline = { "dashboard", "alpha", "snacks_dashboard" } },
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = {
					{ "mode", separator = { left = "", right = "" } },
				},
				lualine_b = {
					{ "branch", icon = "" },
					{
						"diff",
						symbols = { added = " ", modified = " ", removed = " " },
					},
				},
				lualine_c = {
					{
						"diagnostics",
						symbols = { error = " ", warn = " ", info = " ", hint = " " },
					},
					{
						"filename",
						path = 1,
						symbols = {
							modified = " ●",
							readonly = " 󰌾",
							unnamed = "[No Name]",
							newfile = "[New]",
						},
					},
				},
				lualine_x = {
					{
						function()
							local clients = vim.lsp.get_clients({ bufnr = 0 })
							if #clients == 0 then
								return ""
							end
							local names = {}
							for _, client in ipairs(clients) do
								table.insert(names, client.name)
							end
							return "󰒋 " .. table.concat(names, ", ")
						end,
						color = { fg = "#7aa2f7" },
					},
					{ "filetype", icon_only = false },
				},
				lualine_y = {
					{ "progress" },
				},
				lualine_z = {
					{ "location", separator = { left = "", right = "" } },
				},
			},
		}
	end,
}
