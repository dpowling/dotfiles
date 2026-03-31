local ROOT_MARKERS = { "tsconfig.json", "jsconfig.json", "package.json", ".git" }

return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
	},
	root_dir = function(bufnr, on_dir)
		local fname = vim.api.nvim_buf_get_name(bufnr)
		local filetype = vim.bo[bufnr].filetype

		local valid_filetypes = {
			javascript = true,
			javascriptreact = true,
			["javascript.jsx"] = true,
			typescript = true,
			typescriptreact = true,
			["typescript.tsx"] = true,
		}

		if not valid_filetypes[filetype] then
			on_dir(nil)
			return
		end

		local workspace_root = vim.fs.dirname(vim.fs.find(ROOT_MARKERS, { path = fname, upward = true })[1])
		on_dir(workspace_root or vim.fn.getcwd())
	end,
	settings = {
		typescript = {
			inlayHints = {
				enumMemberValues = { enabled = true },
				functionLikeReturnTypes = { enabled = true },
				parameterNames = { enabled = "literals" },
				parameterTypes = { enabled = false },
				propertyDeclarationTypes = { enabled = false },
				variableTypes = { enabled = false },
			},
		},
	},
}
