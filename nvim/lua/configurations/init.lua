require("configurations.remap")
require("configurations.set")
require("configurations.lazy")

vim.api.nvim_exec([[
	augroup elixir_indent
		autocmd!
		autocmd Filetype elixir setlocal shiftwidth=4 tabstop=4
	augroup END
]], false)
