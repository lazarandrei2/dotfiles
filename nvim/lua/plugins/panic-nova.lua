return {
	"lazarandrei/panic-nova.nvim",
	dir = vim.fn.stdpath("config") .. "/lua/themes/panic-nova",

	config = function()
		vim.cmd("colorscheme panic-nova")
	end
}
