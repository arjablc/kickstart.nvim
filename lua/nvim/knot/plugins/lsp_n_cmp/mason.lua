return {
	"williamboman/mason.nvim",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local masonlsp = require("mason-lspconfig")
		local mason = require("mason")
		local masontools = require("mason-tool-installer")
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		masonlsp.setup({
			ensure_installed = {
				"lua_ls", --lsp for lua
			},
		})
		masontools.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua formatter
				"eslint_d",
				-- "isort", -- python formatter
				-- "black", -- python formatter
			},
		})
	end,
}
