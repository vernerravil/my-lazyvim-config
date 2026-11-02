return {
	{
		"neovim/nvim-lspconfig",
		opts = {
			diagnostics = {
				virtual_lines = true,
				virtual_text = false,
			},
			servers = {
				marksman = { enabled = false },
				rumdl = {
					cmd = { "rumdl", "server" },
					filetypes = { "markdown", "markdown.mdx" },
					root_markers = { "rumdl.toml", ".rumdl.toml", ".git" },
				},
				tsc = {
					on_attach = function(client)
						client.server_capabilities.documentFormattingProvider = false
						client.server_capabilities.documentRangeFormattingProvider = false
						client.server_capabilities.documentOnTypeFormattingProvider = nil

						if client.server_capabilities.codeActionProvider then
							client.server_capabilities.codeActionProvider = {
								codeActionKinds = { "quickfix" },
							}
						end
					end,
				},
				biome = {
					on_attach = function(client)
						client.server_capabilities.documentOnTypeFormattingProvider = nil
						client.server_capabilities.definitionProvider = false
						client.server_capabilities.completionProvider = nil
					end,
				},
			},
		},
	},
}
