return {
	"nvim-lualine/lualine.nvim",

	config = function()
		-- Eviline config for lualine
		-- Author: shadmansaleh
		-- Credit: glepnir
		local lualine = require('lualine')

		-- Now don't forget to initialize lualine
		lualine.setup()
	end,
}
