return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls"},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				capabilities = capabilities,
			})
			lspconfig.dartls.setup({
				capabilities = capabilities,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
--{
--	"VonHeikemen/lsp-zero.nvim",
--	branch = "v3.x",
--	config = function()
--		local lsp_zero = require("lsp-zero")

--		lsp_zero.on_attach(function(client, bufnr)
--			-- see :help lsp-zero-keybindings
--			-- to learn the available actions
--			lsp_zero.default_keymaps({ buffer = bufnr })
--		end)

--		-- here you can setup the language servers
--	end,
--},
}
