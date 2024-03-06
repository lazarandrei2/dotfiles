return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},

	config = function()
		require("ib").setup()
	end,
}