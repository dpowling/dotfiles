vim.pack.add({
	{
		src = "https://github.com/williamboman/mason.nvim",
		version = vim.version.range("^1"),
	},
	{
		src = "https://github.com/williamboman/mason-lspconfig.nvim",
	},
})

require("mason").setup()
require("mason-lspconfig").setup({

})

