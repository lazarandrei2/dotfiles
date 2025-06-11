return {
	"nvimtools/none-ls.nvim",

	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.gofumpt,

				null_ls.builtins.formatting.prettier.with({
					args = { "--indent-width", "4", "--indent-type", "Spaces", "-" }
				}),
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
